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
#ifndef def_hpp
#define def_hpp

#define _USE_MATH_DEFINES

#include <random>
#include <cmath>
#include <pthread.h> 
#include <string>

/* The value of "cnt" element in the histogram will decay every DECAY updates. */
extern int DECAY;
/* The rate of the decay. */
extern float LAMBDA;

/* Each histogram element is now associated with the following information. 
 * 1. cnt: the count of that element in the streaming graph. (use double due to time decay)
 * 2. r, beta, c: parameters to create hash values. r ~ Gamma(2, 1), c ~ Gamma(2, 1), beta ~ Uniform(0, 1)
 */
struct hist_elem {
	// double cnt;
	double r[SKETCH_SIZE];
	double beta[SKETCH_SIZE];
	double c[SKETCH_SIZE]; 
};

// std::default_random_engine r_generator(24);
// std::default_random_engine c_generator(12);
// std::default_random_engine beta_generator(3);
std::gamma_distribution<double> gamma_dist(2.0, 1.0);
// std::gamma_distribution<double> gamma_dist2(2.0, 1.0);
std::uniform_real_distribution<double> uniform_dist(0.0, 1.0);

#endif
