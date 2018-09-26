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

}

#endif