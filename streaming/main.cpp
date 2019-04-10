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

#include <fstream>

#include "include/def.hpp"
#include "include/helper.hpp"
#include "include/histogram.hpp"
#include "graphchi_basic_includes.hpp"
#include "logger/logger.hpp"
#include "wl.hpp"
#include "../extern/extern.hpp"


#include <pthread.h> 
#include <sys/types.h>

using namespace graphchi;

graphchi_dynamicgraph_engine<VertexDataType, EdgeDataType> * dyngraph_engine;
std::string stream_file;
std::string sketch_file;
FILE * sfp;

pthread_barrier_t std::graph_barrier;
pthread_barrier_t std::stream_barrier;
int std::stop = 0;
bool std::base_graph_constructed = false;
bool std::no_new_tasks = false;
/* The following variables are declared in def.hpp.
 * They are defined here and will be assigned values in main function. */
int DECAY;
float LAMBDA;
int INTERVAL;
int WINDOW;
bool CHUNKIFY = true;
int CHUNK_SIZE;
int MULTIPLE;
// int PREGEN;
// bool MEMORY = true;

/* The following varible is global. */
// bool next_itr = false;

/*!
 * @brief A separate thread execute this function to stream graph from a file.
 */
void * dynamic_graph_reader(void * info) {
	// logstream(LOG_DEBUG) << "Waiting to start streaming the graph..." << std::endl;
	// usleep(100000); /* We do not need to sleep to wait. We have a while loop to do so. */
	logstream(LOG_DEBUG) << "Streaming begins from file: " << stream_file << std::endl;

	// /* Open the sketch file to write our sketches. */
	// FILE * fp = fopen(sketch_file.c_str(), "a+");
	// if (fp == NULL) {
	// 	logstream(LOG_ERROR) << "Cannot open the sketch file to write: " << sketch_file << ". Error code: " << strerror(errno) << std::endl;
	// 	assert(false);
	// 	return NULL;
	// }
	/* A busy loop to wait until the base graph histogram is constructed. */
	while(!std::base_graph_constructed) {
		// logstream(LOG_DEBUG) << "Waiting to proceed... Current iteration: " << ginfo.iteration << std::endl;
		sleep(0);
	}

	/* Open the file for streaming. */
	FILE * f = fopen(stream_file.c_str(), "r");
	if (f == NULL) {
		logstream(LOG_ERROR) << "Unable to open the file for streaming: " << stream_file << ". Error code: " << strerror(errno) << std::endl;
	}
	assert(f != NULL);

	/* Reading the file. */
	vid_t from;
	vid_t to;
	EdgeDataType el;
	char s[1024];
	int cnt = 0;
	bool passed_barrier = false;

	while(fgets(s, 1024, f) != NULL) {
		/*
		 * We add more edges and nodes for the graphChi algorithm to compute A CHUNK AT A TIME.
		 * That is, we will wait until all previous added nodes and edges are done computing,
		 * before we add new nodes and edges for computation.
		 */
		if (cnt == 0 && !passed_barrier) {
			// We wait until GraphChi finishes its computation, then we will start streaming in new edges.
			pthread_barrier_wait(&std::stream_barrier);
		}
		passed_barrier = true;
		FIXLINE(s);
		/* Read next line. */
		char delims[] = ":\t ";
		unsigned char *t;
		char *k;

		k = strtok(s, delims);
		if (k == NULL)
			logstream(LOG_ERROR) << "Source ID does not exist." << std::endl;
		assert(k != NULL);
		from = atoi(k);

		k = strtok(NULL, delims);
		if (k == NULL)
			logstream(LOG_ERROR) << "Detination ID does not exist." << std::endl;
		assert(k != NULL);
		to = atoi(k);

		el.itr = 0; /* new itr count is always 0. */
		t = (unsigned char *)strtok(NULL, delims);
		if (t == NULL)
			logstream(LOG_ERROR) << "Source label does not exist." << std::endl;
		assert(t != NULL);
		el.src[0] = hash(t);
	    
		t = (unsigned char *)strtok(NULL, delims);
		if (t == NULL)
			logstream(LOG_ERROR) << "Destination label does not exist." << std::endl;
		assert (t != NULL);
		el.dst = hash(t);

		t = (unsigned char *)strtok(NULL, delims);
		if (t == NULL)
			logstream(LOG_ERROR) << "Edge label does not exist." << std::endl;
		assert (t != NULL);
		el.edg = hash(t);

		k = strtok(NULL, delims);
		if (k == NULL)
			logstream(LOG_ERROR) << "New_src info does not exist." << std::endl;
		assert(k != NULL);
		int new_src = atoi(k);
		if (new_src == 1)
			el.new_src = true;
		else
			el.new_src = false;

		k = strtok(NULL, delims);
		if (k == NULL)
			logstream(LOG_ERROR) << "New_dst info does not exist." << std::endl;
		assert(k != NULL);
		int new_dst = atoi(k);
		if (new_dst == 1)
			el.new_dst = true;
		else
			el.new_dst = false;

		k = strtok(NULL, delims);
		if (k == NULL)
			logstream(LOG_ERROR) << "Time label does not exist." << std::endl;
		assert (k != NULL);
		el.tme[0] = strtoul(k, NULL, 10);

#ifdef DEBUG
		k = strtok(NULL, delims);
		if (k != NULL)
			logstream(LOG_DEBUG) << "Extra info will be ignored." << std::endl;
#endif
		if (from == to) {
#ifdef DEBUG
			logstream(LOG_ERROR) << "Ignoring edge because a self-loop is detected during streaming: " << from << "<->" << to <<std::endl;
#endif
			continue;
		}
		/* Add the new edge to the graph. */
		bool success = false;
		while (!success) {
			success = dyngraph_engine->add_edge(from, to, el);
		}
		++cnt;
		/* Schedule the new nodes to be computed. 
		 * Probably not needed since we are not doing selective scheduling any more.
		 */
		dyngraph_engine->add_task(from);
		dyngraph_engine->add_task(to);
#ifdef DEBUG
		logstream(LOG_DEBUG) << "Schedule a new edge with possibly new nodes: " << from << " -> " << to << std::endl;
#endif
		if (cnt == INTERVAL) {
			/* We continue to add new edges until INTERVAL edges are added. Then we let GraphChi starts its computation. */
			cnt = 0;
			passed_barrier = false;
			/* We first record the sketch from the updated graph. */
			// logstream(LOG_INFO) << "Recording the base graph sketch... " << std::endl;
			// hist->record_sketch(fp);
			pthread_barrier_wait(&std::graph_barrier);
		}
	}
	std::stop = 1;
	if (cnt != 0) {
		/* Only need to wait if there is something there. */
		pthread_barrier_wait(&std::graph_barrier);
	}
	if (ferror(f) != 0 || fclose(f) != 0) {
		logstream(LOG_ERROR) << "Unable to close the stream file: " << stream_file << ". Error code: " << strerror(errno) << std::endl;
		return NULL;
	}
	/* After the file is closed, the engine will stop 1000 iterations after the current iteration in which the addition is finished. */
	// dyngraph_engine->finish_after_iters(1000);

	return NULL;
}

/* Run the program in command line on the graphchi-cpp directory:
 * bin/streaming/main file streaming/test.data niters 1000 stream_file streaming/stream.data
 * Compile the program:
 * With debugging information: make sdebug
 * Without debugging info: make streaming/main
 */
int main(int argc, const char ** argv) {
	/* GraphChi initialization will read the command line arguments and the configuration file. */
	graphchi_init(argc, argv);

	/* Metrics object for keeping track of performance counters and other information. 
	 * Currently required. */
	metrics m("Streaming Extractor");
	
	global_logger().set_log_level(LOG_ERROR);

	/* Parameters from command line. */
	std::string filename = get_option_string("file");
	int niters = get_option_int("niters", 1000000);
	bool scheduler = true;
	stream_file = get_option_string("stream_file");

	/* More parameters from command line to configure hyperparameters of feature vector generation. 
	 * All the variables below are declared in def.hpp as extern.
	 */
	DECAY = get_option_int("decay", 10);	/* TODO: To be retired. */
	LAMBDA = get_option_float("lambda", 0.02);	
	INTERVAL = get_option_int("interval", 1000);
	WINDOW = get_option_int("window", 500);	/* TODO: To be retired. */
	sketch_file = get_option_string("sketch_file");
	int to_chunk = get_option_int("chunkify", 1);
	if (!to_chunk)
		CHUNKIFY = false;
	CHUNK_SIZE = get_option_int("chunk_size", 5);
	MULTIPLE = get_option_int("multiple", 1);
	// PREGEN = get_option_int("pregen", 10000);
	// int in_memory = get_option_int("memory", 1);
	// if (!in_memory) {
	// 	MEMORY = false;
	// 	PREGEN = 1;	//Make sure we won't waste space in Histogram class.
	// }

	/* Open the sketch file to write. */
	sfp = fopen(sketch_file.c_str(), "a");
	if (sfp == NULL) {
		logstream(LOG_ERROR) << "Cannot open the sketch file to write: " << sketch_file << ". Error code: " << strerror(errno) << std::endl;
	}
	assert(sfp != NULL);
	
	/* Process input file - if not already preprocessed */
	int nshards = convert_if_notexists<EdgeDataType>(filename, get_option_string("nshards", "auto"));

	/* Create the engine object. */
	dyngraph_engine = new graphchi_dynamicgraph_engine<VertexDataType, EdgeDataType>(filename, nshards, scheduler, m); 

	/* Initialize barrier. */
	pthread_barrier_init(&std::stream_barrier, NULL, 2);
	pthread_barrier_init(&std::graph_barrier, NULL, 2);

	/* Start streaming thread. */
	pthread_t strthread;
	int ret = pthread_create(&strthread, NULL, dynamic_graph_reader, NULL);
	assert(ret >= 0);


	/* Run the engine */
	WeisfeilerLehman program;
	dyngraph_engine->run(program, niters);

	/* Once the streaming graph is all done, we will record the last sketch that sketches the complete graph. */
	/* We append the last sketch to the @sketch_file. */
	// FILE * fp = fopen(sketch_file.c_str(), "a");
	// if (fp == NULL) {
	// 	logstream(LOG_ERROR) << "Cannot open the sketch file to write: " << sketch_file << ". Error code: " << strerror(errno) << std::endl;
	// }
	// assert(fp != NULL);
	Histogram* hist = Histogram::get_instance();

	logstream(LOG_DEBUG) << "Recording the final complete graph sketch... " << std::endl;
	if (sfp == NULL) {
		logstream(LOG_ERROR) << "Sketch file no longer exists... " << std::endl;
	}
	hist->force_record(sfp);

	if (ferror(sfp) != 0 || fclose(sfp) != 0) {
		logstream(LOG_ERROR) << "Unable to close the sketch file: " << sketch_file <<  std::endl;
		return -1;
	}

	/* Release the barrier resources. */
	int ret_stream = pthread_barrier_destroy(&std::stream_barrier);
	int ret_graph = pthread_barrier_destroy(&std::graph_barrier);
	if (ret_stream == EBUSY) {
		logstream(LOG_ERROR) << "stream_barrier cannot be destroyed." << std::endl;
	}
	if (ret_graph == EBUSY) {
		logstream(LOG_ERROR) << "graph_barrier cannot be destroyed." << std::endl;
	}

	// metrics_report(m);
	return 0;
}
