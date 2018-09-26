#include <iostream>
#include <random>

#include "include/histogram.hpp"
#include "include/def.hpp"

#define NUM_THREADS 2
#define SINGLE 1

int DECAY;
float LAMBDA;

unsigned long labels[10] = {17801, 17802, 17803, 17804, 17805, 391754189065, 56438927594, 58942375902, 5743829047, 74389274};
std::map<unsigned long, struct hist_elem> param_map;

/*
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
*/

int main()
{
	DECAY = 100;
	LAMBDA = 0.02;
	// pthread_t threads[NUM_THREADS];

	Histogram* hist = Histogram::get_instance();
/*		
	for (int i = 0; i < 10; i++) {
		struct hist_elem elem = hist->construct_hist_elem(labels[i]);
		param_map.insert(std::pair<unsigned long, struct hist_elem>(labels[i], elem));		
	}

	for (int j = 0; j < 10; j++) {
		std::map<unsigned long, struct hist_elem>::iterator it;

                it = param_map.find(labels[j]);
                if (it == param_map.end()){
                        std::cout << "Label: " << labels[j] << " should exist in param map, but it does not. " << std::endl;
                        return -1;
                }
                struct hist_elem histo_param = it->second;		

		// std::default_random_engine r_generator(labels[j]);
                // std::default_random_engine c_generator(labels[j] / 2);
                // std::default_random_engine beta_generator(labels[j]);
		struct hist_elem generated_param = hist->construct_hist_elem(labels[j]);
                for (int i = 0; i < SKETCH_SIZE; i++) {
                        // Compute the new hash value a.
                        // double r = gamma_dist(r_generator);
                        // double beta = uniform_dist(beta_generator);
                        // double c = gamma_dist(c_generator);
			double r = generated_param.r[i];
			double c = generated_param.c[i];
			double beta = generated_param.beta[i];

                        if (r != histo_param.r[i]) {
                                std::cout << "r value (" << r << ") should be the same for label: " << labels[j] << ". But it is not at location i: " << i << ", which is: " << histo_param.r[i] << std::endl;
                        }
                        if (beta != histo_param.beta[i]) {
                                std::cout << "beta value (" << beta << ") should be the same for label: " << labels[j] << ". But it is not at location i: " << i << ", which is: " << histo_param.beta[i] << std::endl;
                        }
                        if (c != histo_param.c[i]) {
                                std::cout << "c value (" << c << ") should be the same for label: " << labels[j] << ". But it is not at location i: " << i <<", which is: " << histo_param.c[i] <<  std::endl;
                        }
		}	
	}
*/
	for (int i = 0; i < 10; i++) {
		hist->update(labels[i], true, param_map);
	}

	hist->create_sketch(param_map);

	if (SINGLE) {
        	for (int i = 0; i < 10; i++) {
                	hist->update(labels[i], false, param_map);
        	}
        	for (int i = 0; i < 10; i++) {
                	hist->update(labels[i], false, param_map);
        	}
	}
	/*
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
	*/
	return 0;
}
