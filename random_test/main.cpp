#include <iostream>
#include <random>
#include <pthread.h>

#include "include/histogram.hpp"
#include "include/helper.hpp"
#include "include/def.hpp"

#define NUM_THREADS 2
#define SINGLE 1

int DECAY;
float LAMBDA;

unsigned long labels[10] = {17801, 17802, 17803, 17804, 17805, 391754189065, 56438927594, 58942375902, 5743829047, 74389274};
std::map<unsigned long, struct hist_elem> param_map;

void * stream_thread(void *threadid) {
	long tid;
	tid = (long)threadid;
	Histogram* hist = Histogram::get_instance();

	for (int i = 0; i < 10; i++) {
		std::cout << "Thread ID: " << tid << std::endl;
		hist->update(labels[i % 10], true, false, param_map);
	}
	pthread_exit(NULL);
} 

int main()
{
	DECAY = 100;
	LAMBDA = 0.02;
	pthread_t threads[NUM_THREADS];

	Histogram* hist = Histogram::get_instance();

	for (int i = 0; i < 10; i++) {
		hist->update(labels[i], false, true, param_map);
	}

	hist->create_sketch(param_map);

	if (SINGLE) {
        	for (int i = 0; i < 10; i++) {
                	hist->update(labels[i % 10], true, false, param_map);
        	}
	}
	else {
		for (int i = 0; i < NUM_THREADS; i++) {
			std::cout << "main() : creating thread, " << i << std::endl;
			int rc = pthread_create(&threads[i], NULL, stream_thread, (void *)i);
      
			if (rc) {
				std::cout << "Error: unable to create thread," << rc << std::endl;
				exit(-1);
			}
		}
		for (int i = 0; i < NUM_THREADS; i++) {
			pthread_join(threads[i], NULL);
		}
	}
	return 0;
}
