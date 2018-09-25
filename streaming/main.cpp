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
#include "include/kissdb.h"
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

pthread_barrier_t std::graph_barrier;
pthread_barrier_t std::stream_barrier;
int std::stop = 0;
bool std::base_graph_constructed = false;
/* The following variables are declared in def.hpp.
 * They are defined here and will be assigned values in main function. */
int DECAY;
float LAMBDA;
int INTERVAL;
bool CHUNKIFY = true;
int CHUNK_SIZE;
KISSDB db;

/* The following varible is global. */
bool next_itr = false;

/*!
 * @brief A separate thread execute this function to stream graph from a file.
 */
void * dynamic_graph_reader(void * info) {
	// logstream(LOG_DEBUG) << "Waiting to start streaming the graph..." << std::endl;
	// usleep(100000); /* We do not need to sleep to wait. We have a while loop to do so. */
	logstream(LOG_DEBUG) << "Streaming begins from file: " << stream_file << std::endl;

	/* Open the MODEL_FILE to write our sketches. */
	FILE * fp = fopen(sketch_file.c_str(), "a+");
	if (fp == NULL) {
		logstream(LOG_ERROR) << "Cannot open the sketch file to write: " << sketch_file << ". Error code: " << strerror(errno) << std::endl;
		assert(false);
		return NULL;
	}

	/* A busy loop to wait until the base graph histogram is constructed. */
	while(!std::base_graph_constructed) {
		// logstream(LOG_DEBUG) << "Waiting to proceed... Current iteration: " << ginfo.iteration << std::endl;
		sleep(0);
	}
	/* Once breaking out of the loop, we know the base graph histogram is ready. */
	/* Get the singleton of histogram map. */
	Histogram* hist = Histogram::get_instance();

	/* We create and initailize the sketch of the histogram. */
	hist->get_lock();
	hist->create_sketch();
	hist->release_lock();

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

	while(fgets(s, 1024, f) != NULL) {
		/*
		 * We add more edges and nodes for the graphChi algorithm to compute A CHUNK AT A TIME.
		 * That is, we will wait until all previous added nodes and edges are done computing,
		 * before we add new nodes and edges for computation.
		 */
		if (cnt == 0) {
			// We wait until GraphChi finishes its computation, then we will start streaming in new edges.
			pthread_barrier_wait(&std::stream_barrier);
		}
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
		el.tme[0] = atoi(k);

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
			/* We first record the sketch from the updated graph. */
			hist->get_lock();
			logstream(LOG_INFO) << "Recording the base graph sketch... " << std::endl;
			hist->record_sketch(fp);
			hist->release_lock();
			pthread_barrier_wait(&std::graph_barrier);
		}
	}
	std::stop = 1;
	pthread_barrier_wait(&std::graph_barrier);
	if (ferror(f) != 0 || fclose(f) != 0) {
		logstream(LOG_ERROR) << "Unable to close the stream file: " << stream_file << ". Error code: " << strerror(errno) << std::endl;
		return NULL;
	}
	if (ferror(fp) != 0 || fclose(fp) != 0) {
		logstream(LOG_ERROR) << "Unable to close the sketch file: " << sketch_file << ". Error code: " << strerror(errno) << std::endl;
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
	global_logger().set_log_level(LOG_INFO);

	/* Parameters from command line. */
	std::string filename = get_option_string("file");
	int niters = get_option_int("niters", 1000);
	bool scheduler = false; /* We cannot use selective scheduling. */
	stream_file = get_option_string("stream_file");

	/* More parameters from command line to configure hyperparameters of feature vector generation. 
	 * All the variables below are declared in def.hpp as extern.
	 */
	DECAY = get_option_int("decay", 10);
	LAMBDA = get_option_float("lambda", 0.02);
	INTERVAL = get_option_int("interval", 1000);
	sketch_file = get_option_string("sketch_file");
	int to_chunk = get_option_int("chunkify", 1);
	if (!to_chunk)
		CHUNKIFY = false;
	CHUNK_SIZE = get_option_int("chunk_size", 5);
	
	/* Process input file - if not already preprocessed */
	int nshards = convert_if_notexists<EdgeDataType>(filename, get_option_string("nshards", "auto"));

	/* Create a simple database to deal with hash values. */
	logstream(LOG_DEBUG) << "Opening a new empty database call unicorn.db...\n" << std::endl;

	if (KISSDB_open(&db, "unicorn.db", KISSDB_OPEN_MODE_RWCREAT, 1000000, sizeof(unsigned long), sizeof(struct hist_elem))) {
		logstream(LOG_ERROR) << "Opening unicorn.db failed!" << std::endl;
		return 1;
	}

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
	FILE * fp = fopen(sketch_file.c_str(), "a");
	if (fp == NULL) {
		logstream(LOG_ERROR) << "Cannot open the sketch file to write: " << sketch_file << ". Error code: " << strerror(errno) << std::endl;
	}
	assert(fp != NULL);
	Histogram* hist = Histogram::get_instance();

	hist->get_lock();
	logstream(LOG_DEBUG) << "Recording the final complete graph sketch... " << std::endl;
	if (fp == NULL) {
		logstream(LOG_ERROR) << "Sketch file no longer exists... " << std::endl;
	}
	hist->record_sketch(fp);
	hist->release_lock();

	if (ferror(fp) != 0 || fclose(fp) != 0) {
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

	KISSDB_close(&db);
	// metrics_report(m);
	return 0;
}
