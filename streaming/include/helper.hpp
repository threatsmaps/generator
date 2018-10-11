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
#ifndef helper_hpp
#define helper_hpp

#include <cassert>
#include <cmath>
#include <cstdlib>
#include <string>
#include <unistd.h>
#include <vector>


#include "logger/logger.hpp"
#include "def.hpp"

namespace graphchi {
	/*!
	 * @brief Deterministically hash character strings to a unique unsigned long integer.
	 *
	 */
	unsigned long hash(unsigned char *str) {
		unsigned long hash = 5381;
		int c;

		while (c = *str++)
			hash = ((hash << 5) + hash) + c; /* hash * 33 + c */
		return hash;
	}

	/*!
	 * @brief Customized parse funtion to parse edge values from edgelist-formatted file.
	 *
	 */
	void parse(edge_label &x, const char *s) {
		char *ss = (char *) s;
		char delims[] = ":";
		unsigned char *t;
		char *k;

		x.itr = 0; /* At the beginning, itr count is always 0. */
		/* For base nodes, we will deal with them separately first, so we do not need to mark them new or include other time information. */
		x.new_src = false;
		x.new_dst = false;
	
		t = (unsigned char *)strtok(ss, delims);
		if (t == NULL)
			logstream(LOG_FATAL) << "Source label does not exist." << std::endl;
		assert(t != NULL);
		x.src[0] = hash(t);
	
		t = (unsigned char *)strtok(NULL, delims);
		if (t == NULL)
			logstream(LOG_FATAL) << "Destination label does not exist." << std::endl;
		assert (t != NULL);
		x.dst = hash(t);

		t = (unsigned char *)strtok(NULL, delims);
		if (t == NULL)
			logstream(LOG_FATAL) << "Edge label does not exist." << std::endl;
		assert (t != NULL);
		x.edg = hash(t);

		k = strtok(NULL, delims);
		if (k == NULL)
			logstream(LOG_FATAL) << "Time label does not exist." << std::endl;
		assert (k != NULL);
		x.tme[0] = std::stoi(k);

		k = strtok(NULL, delims);
		if (k != NULL)
			logstream(LOG_FATAL) << "Extra info, if any, will be ignored." << std::endl;

		return;
	}

	/*!
	 * @brief Chunk a string into a vector of hashed sub-strings ready to be inserted into the map.
	 *
	 */
	std::vector<unsigned long> chunkify(unsigned char *s, int chunk_size) {
		char *ss = (char *) s;
		char delims[] = " ";
		char *t;
		int counter = 0;
		std::string to_hash = "";
		std::vector<unsigned long> rtn;
		bool first = true;

		assert(chunk_size > 1);

		t = strtok(ss, delims);
		if (t == NULL)
			logstream(LOG_FATAL) << "The string to be chunked must be a non-empty string." << std::endl;
		assert(t != NULL);

		/* We explain the following logic using an example.
		 * If we have a string: 12334 456 76634 4546 2345, and chunk_size is set to 2.
		 * We produce the following substrings:
		 * 1. 12334 456
		 * 2.  76634 4546
		 * 3.  2345
		 * Note there is a space in the front of substring 2 and substring 3.
		 * @chunk_size is the maximum size of the chunk. Note that substring 3 has only 1 string.
		 * We hash each substring and push it into the vector to return.
		 */
		while (t != NULL) {
			std::string str(t);
			if (first) {
				to_hash += str;
				first = false;
			} else {
				to_hash += " " + str;
			}
			counter++;
			if (counter == chunk_size) {
				rtn.push_back(hash((unsigned char *)to_hash.c_str()));
				counter = 0;
				to_hash = "";
			}
			t = strtok(NULL, delims);
		}
		if (to_hash.length() > 0) {
			rtn.push_back(hash((unsigned char *)to_hash.c_str()));
		}
		return rtn;

	}

	bool compareEdges(struct edge_label a, struct edge_label b, int pos) {
		return a.tme[pos] < b.tme[pos];
	}
	/*!
	 * @brief This class is used to sort edge_label structs based on its "tme" value at position n.
	 */
	class EdgeSorter{
		int pos;
		
		public:
			EdgeSorter(int pos) {
				this->pos = pos;
			}
		bool operator()(struct edge_label a, struct edge_label b) const {
			return compareEdges(a, b, pos);
		}
	};

}

#endif