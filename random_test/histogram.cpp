/*
 *
 * Author: Xueyuan Han <hanx@g.harvard.edu>
 *
 * Copyright (C) 2018 Harvard University
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2, as
 * published by the Free Software Foundation; either version 2 of the License,
 * or (at your option) any later version.
 *
 */
#include "include/histogram.hpp"

#include <fstream>
#include <math.h>
#include <random>
#include <iostream>
#include <map>


Histogram* Histogram::histogram;

Histogram* Histogram::get_instance() {
	if (!histogram) 
		histogram = new Histogram();
	return histogram;
}

Histogram::~Histogram(){
	delete histogram;
}

struct hist_elem Histogram::construct_hist_elem(unsigned long label) {
	struct hist_elem new_elem;
	std::default_random_engine r_generator(label);
	std::default_random_engine c_generator(label / 2);
	std::default_random_engine beta_generator(label);
	for (int i = 0; i < SKETCH_SIZE; i++) {
		new_elem.r[i] = gamma_dist(r_generator);
		new_elem.beta[i] = uniform_dist(beta_generator);
		new_elem.c[i] = gamma_dist(c_generator);
	}
	return new_elem;
}


/*!
 * @brief Insert @label to the histogram_map if it does not exist; otherwise, update the mapped "cnt" value.
 * 
 * @increment_t: if CHUNKIFY, we only decay the value once.
 * @base: if true, we do not update hash. We only update hash during streaming.
 * 
 * We decay every element in the histogram every DECAY updates.
 * We lock the whole operation here.
 *
 */
void Histogram::update(unsigned long label, bool increment_t, bool base, std::map<unsigned long, struct hist_elem>& param_map) {
	this->histogram_map_lock.lock();
	if (increment_t) /* We use this variable to make sure, when we do CHUNKIFY, we only update once*/
		this->t++;
	/* Decay first if needed. Decay only in streaming. */
	if (!base && this->t >= DECAY) {
		std::map<unsigned long, double>::iterator it;
		for (it = this->histogram_map.begin(); it != this->histogram_map.end(); it++) {
			it->second *= pow(M_E, -LAMBDA); /* M_E is defined in <cmath>. */
		}
		for (int i = 0; i < SKETCH_SIZE; i++) {
			this->hash[i] *= pow(M_E, -LAMBDA);
		}
		this->t = 0; /* Reset this timer. */
	}

	/* Now we add the new element or update the existing element in the histogram map. 
	 * This is done both in base and streaming part of the graph.
	 */
	std::pair<std::map<unsigned long, double>::iterator, bool> rst;
	double counter = 1;
	rst = this->histogram_map.insert(std::pair<unsigned long, double>(label, counter));
	if (rst.second == false) {
#ifdef DEBUG
		std::cout << "The label " << label << " is already in the map. Updating the sketch and its hash." << std::endl;
#endif
		(rst.first)->second++;
	}

	/* Now we update the hash if needed.
	 * Hash updates only happen in streaming.
	 */
	if (!base) {
		std::map<unsigned long, struct hist_elem>::iterator basemapit;

		basemapit = param_map.find(label);
		if (basemapit == param_map.end()){
			std::cout << "Label: " << label << " should exist in param map, but it does not. " << std::endl;
			return;
		}
		struct hist_elem histo_param = basemapit->second;

		struct hist_elem generated_param = this->construct_hist_elem(label);
		// std::default_random_engine r_generator(label);
		// std::default_random_engine c_generator(label / 2);
		// std::default_random_engine beta_generator(label);
		for (int i = 0; i < SKETCH_SIZE; i++) {
			/* Compute the new hash value a. */
			// double r = gamma_dist(r_generator);
			// double beta = uniform_dist(beta_generator);
			// double c = gamma_dist(c_generator);

			if (generated_param.r[i] != histo_param.r[i]) {
				std::cout << "r value (" << generated_param.r[i] << ") should be the same for label: " << label << ". But it is not at location i: " << i << ", which is: " << histo_param.r[i] << std::endl;
			}
			if (generated_param.beta[i] != histo_param.beta[i]) {
				std::cout << "beta value (" << generated_param.beta[i] << ") should be the same for label: " << label << ". But it is not at location i: " << i << ", which is: " << histo_param.beta[i] << std::endl;
			}
			if (generated_param.c[i] != histo_param.c[i]) {
				std::cout << "c value (" << generated_param.c[i] << ") should be the same for label: " << label << ". But it is not at location i: " << i <<", which is: " << histo_param.c[i] <<  std::endl;
			}

			double y = pow(M_E, log((rst.first)->second) - generated_param.r[i] * generated_param.beta[i]);
			double a = generated_param.c[i] / (y * pow(M_E, generated_param.r[i]));

			if (a < this->hash[i]) {
				this->hash[i] = a;
				this->sketch[i] = (rst.first)->first;
			}
		}
	}
	this->histogram_map_lock.unlock();
	return;
}

/*!
 * @brief Create (and initialize) a sketch after the base graph has been proceed by GraphChi.
 *
 * Base graph is small. We can save some local sketch parameters for ease of coding. 
 * This function is called only once as initialization.
 * We lock the whole operation.
 *
 */
void Histogram::create_sketch(std::map<unsigned long, struct hist_elem>& param_map) {
	this->histogram_map_lock.lock();
	for (std::map<unsigned long, double>::iterator it = this->histogram_map.begin(); it != this->histogram_map.end(); it++) {
		unsigned long label = it->first;
		struct hist_elem new_elem = this->construct_hist_elem(label);
		param_map.insert(std::pair<unsigned long, struct hist_elem>(label, new_elem));
	}

	for (int i = 0; i < SKETCH_SIZE; i++) {
		/* Compute the hash value a. */
		std::map<unsigned long, double>::iterator histoit = this->histogram_map.begin();
		unsigned long label = histoit->first;
		std::map<unsigned long, struct hist_elem>::iterator basemapit;
		basemapit = param_map.find(label);
		if (basemapit == param_map.end()){
			std::cout << "Label: " << label << " should exist in param map, but it does not. " << std::endl;
			return;
		}
		struct hist_elem histo_param = basemapit->second;
		double y = pow(M_E, log(histoit->second) - histo_param.r[i] * histo_param.beta[i]);
		double a_i = histo_param.c[i] / (y * pow(M_E, histo_param.r[i]));
		unsigned long s_i = histoit->first;
		for (histoit = this->histogram_map.begin(); histoit != this->histogram_map.end(); histoit++) {
			label = histoit->first;
			basemapit = param_map.find(label);
			if (basemapit == param_map.end()){
				std::cout << "Label: " << label << " should exist in param map, but it does not. " << std::endl;
				return;
			}
			histo_param = basemapit->second;
			y = pow(M_E, log(histoit->second) - histo_param.r[i] * histo_param.beta[i]);
			double a = histo_param.c[i] / (y * pow(M_E, histo_param.r[i])); 
			if (a < a_i) {
				a_i = a;
				s_i = histoit->first;
			}
		}
		this->sketch[i] = s_i;
		this->hash[i] = a_i;
	}
	this->histogram_map_lock.unlock();
	return;
}

void Histogram::record_sketch(FILE* fp) {
	this->histogram_map_lock.lock();
	for (int i = 0; i < SKETCH_SIZE; i++) {
		fprintf(fp,"%lu ", this->sketch[i]);
	}
	fprintf(fp, "\n");
	this->histogram_map_lock.unlock();
	return;
}
