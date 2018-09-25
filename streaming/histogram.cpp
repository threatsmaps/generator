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
#include "include/kissdb.h"

#include <math.h>

Histogram* Histogram::histogram;

Histogram* Histogram::get_instance() {
	if (!histogram) 
		histogram = new Histogram();
	return histogram;
}

Histogram::~Histogram(){
	delete histogram;
}

/*!
 * @brief Insert @label to the histogram_map if it does not exist; otherwise, update the mapped "cnt" value.
 *
 * This function is used in the base graph for later sketch creation.
 * When creating sketch, we do not change t, i.e., decay is not taken into the account.
 *
 */
void Histogram::insert_label(unsigned long label) {
	struct hist_elem new_elem;
	if (KISSDB_get(&db, &label, &new_elem)) {
		/* If label does not exist in the database*/
		for (int i = 0; i < SKETCH_SIZE; i++) {
			new_elem.r[i] = gamma_dist(r_generator);
			new_elem.beta[i] = uniform_dist(beta_generator);
			new_elem.c[i] = gamma_dist(c_generator);
		}
		if (KISSDB_put(&db, &label, &new_elem)) {
			logstream(LOG_ERROR) << "KISSDB_put failed." << std::endl;
		}
	}
	double counter = 1;
	std::pair<std::map<unsigned long, double>::iterator, bool> rst;
	rst = this->histogram_map.insert(std::pair<unsigned long, double>(label, counter));
	if (rst.second == false) {
#ifdef DEBUG
		logstream(LOG_DEBUG) << "The label " << label << " is already in the map. Updating the value." << std::endl;
#endif
		(rst.first)->second++;
	}
	return;
}

/*!
 * @brief Insert @label to the histogram_map if it does not exist; otherwise, update the mapped "cnt" value and the sketch.
 *
 * This function is used in the streaming graph for sketch updates.
 * We decay every element in the histogram every DECAY updates.
 *
 */
void Histogram::update(unsigned long label, bool increment_t) {
	if (increment_t) /* We use this variable to make sure, when we do CHUNKIFY, we only update once*/
		this->t++;
	/* Decay first if needed. */
	if (this->t >= DECAY) {
		std::map<unsigned long, double>::iterator it;
		for (it = this->histogram_map.begin(); it != this->histogram_map.end(); it++) {
			it->second *= pow(M_E, -LAMBDA); /* M_E is defined in <cmath>. */
		}
		for (int i = 0; i < SKETCH_SIZE; i++) {
			hash[i] *= pow(M_E, -LAMBDA);
		}
		this->t = 0; /* Reset this timer. */
	}

	/* Now we add the new element or update the existing element. */
	std::pair<std::map<unsigned long, double>::iterator, bool> rst;
	struct hist_elem new_elem;
	if (KISSDB_get(&db, &label, &new_elem)) {
		for (int i = 0; i < SKETCH_SIZE; i++) {
			new_elem.r[i] = gamma_dist(r_generator);
			new_elem.beta[i] = uniform_dist(beta_generator);
			new_elem.c[i] = gamma_dist(c_generator);
		}
		if (KISSDB_put(&db, &label, &new_elem)) {
			logstream(LOG_ERROR) << "KISSDB_put failed." << std::endl;
		}
	}
	double counter = 1;
	rst = this->histogram_map.insert(std::pair<unsigned long, double>(label, counter));
	if (rst.second == false) {
#ifdef DEBUG
		logstream(LOG_DEBUG) << "The label " << label << " is already in the map. Updating the sketch and its hash." << std::endl;
#endif
		(rst.first)->second++;
	}

	/* Now we update the hash if needed. */
	for (int i = 0; i < SKETCH_SIZE; i++) {
		/* Compute the new hash value a. */
		double y = pow(M_E, log((rst.first)->second) - new_elem.r[i] * new_elem.beta[i]);
		double a = new_elem.c[i] / (y * pow(M_E, new_elem.r[i]));

		if (a < this->hash[i]) {
			this->hash[i] = a;
			this->sketch[i] = (rst.first)->first;
		}
	}
	return;
}

/*!
 * @brief Create (and initialize) a sketch after the base graph has been proceed by GraphChi.
 *
 */
void Histogram::create_sketch() {
	for (int i = 0; i < SKETCH_SIZE; i++) {
		/* Compute the hash value a. */
		std::map<unsigned long, double>::iterator it = this->histogram_map.begin();
		struct hist_elem new_elem;
		unsigned long label = it->first;
		if (KISSDB_get(&db, &label, &new_elem)) {
			logstream(LOG_ERROR) << "Label: " << label << " should exist in unicorn.db, but it does not. " << std::endl;
			return;
		}
		double y = pow(M_E, log(it->second) - new_elem.r[i] * new_elem.beta[i]);
		double a_i = new_elem.c[i] / (y * pow(M_E, new_elem.r[i]));
		unsigned long s_i = it->first;
		for (it = this->histogram_map.begin(); it != this->histogram_map.end(); it++) {
			label = it->first;
			if (KISSDB_get(&db, &label, &new_elem)) {
				logstream(LOG_ERROR) << "Label: " << label << " should exist in unicorn.db, but it does not. " << std::endl;
				return;
			}
			y = pow(M_E, log(it->second) - new_elem.r[i] * new_elem.beta[i]);
			double a = new_elem.c[i] / (y * pow(M_E, new_elem.r[i])); 
			if (a < a_i) {
				a_i = a;
				s_i = it->first;
			}
		}
		this->sketch[i] = s_i;
		this->hash[i] = a_i;
	}
}

void Histogram::get_lock() {
	this->histogram_map_lock.lock();
}

void Histogram::release_lock(){
	this->histogram_map_lock.unlock();
}

/*!
 * @brief Remove @label from the histogram_map.
 *
 */
// void Histogram::remove_label(unsigned long label) {
// 	std::map<unsigned long, int>::iterator it;
// 	it = this->histogram_map.find(label);
// 	if (it != this->histogram_map.end()) {
// 		it->second--;
// 		if (it->second == 0){
// 			this->size--;
// 		}
// 	}
// #ifdef DEBUG
// 	else {
// 		logstream(LOG_ERROR) << "Decrement histogram element count failed! The label " << label << " should have been in the histogram, but it is not." << std::endl;		
// 	}
// #endif

// 	return;
// }

void Histogram::record_sketch(FILE* fp) {
	for (int i = 0; i < SKETCH_SIZE; i++) {
		fprintf(fp,"%lu ", this->sketch[i]);
	}
	fprintf(fp, "\n");
	return;
}

/*!
 * @brief Print the histogram map for debugging.
 * Simply returns for now since it slows the program down in CircleCI.
 *
 */
void Histogram::print_histogram() {
	// std::map<unsigned long, struct hist_elem>::iterator it;
	// logstream(LOG_DEBUG) << "Printing histogram map to the console..." << std::endl;
	// for (it = this->histogram_map.begin(); it != this->histogram_map.end(); it++)
	// 	logstream(LOG_INFO) << "[" << it->first << "]->" << (it->second).cnt << "  ";
	return;
}