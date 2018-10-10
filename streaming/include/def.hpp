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

/* SKETCH_SIZE and K_HOPS are now compilation constant defined using -D flags. */
/* This is the size of the sketch. */
// #define SKETCH_SIZE 2000
/* The WL algorithm will explore K_HOPS-hop neighbors. */
// #define K_HOPS 3

/* The value of "cnt" element in the histogram will decay every DECAY updates. */
extern int DECAY;
/* The rate of the decay. */
extern float LAMBDA;
/* Determines how many new edges we see before we record the hashed streaming histogram. */
extern int INTERVAL;
/* Determine if we want to chunk the string, and how big each chunk is. CHUNK_SIZE > 1 */
extern bool CHUNKIFY;
extern int CHUNK_SIZE;
/* Sketch file to write the sketch. */
extern FILE * sfp;

// extern bool next_itr; /* We do not need any more iterations if next_itr is false. GraphChi should stop. */

/* In a truly streaming setting, GraphChi does not allow dynamic vertex/edge type.
 * We therefore must fixed the neighborhood we are exploring.
 * Currently we implement K_HOPS neighborhood.
 * Therefore, The array "src" holds K_HOPS + 1 elements:
 * 		- The label of the source node, which we can initialize from the file.
 * 		- The relabel of the first-hop neighborhood.
 *		- The relabel of the second-hop neighborhood.
 * 		- The relabel of the third-hop neighborhood.
 *		- ...
 *		- The relabel of the K_HOPS neighborhood.
 * The array "tme" is corresponding timestamps. The first element is the timestamep of the edge.
 * The following elements are the corresponding timestamps of the relabeled node at each hop.
 * "dst" is the label of the destination node.
 * "itr" is the number of times the destination node has access the edge for computation.
 * "edg" is the edge label.
 * For streaming new edges:
 * 		- "new_src": whether the source node is a new node, never-before-seen.
 * 		- "new_dst": whether the destination node is a new node, never-before-seen.
 */
struct edge_label {
	/* We use K_HOPS+1 because the first element is itself and the next K_HOPS are exploration of K_HOPS-hop neighbors. */
	unsigned long src[K_HOPS+1];
	unsigned long dst;
	unsigned long edg;
	int tme[K_HOPS+1];
	int itr;
	bool new_src;
	bool new_dst;
};

typedef edge_label EdgeDataType;

/* Node itself remembers all its most-updated labels "lb" and times "tm".
 * "is_leaf": whether the node is a leaf node. (no incoming edges)
 */
struct node_label {
	unsigned long lb[K_HOPS+1];
	int tm[K_HOPS+1];
	bool is_leaf;
};

typedef node_label VertexDataType;

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
std::uniform_real_distribution<double> uniform_dist(0.0, 1.0);

#endif
