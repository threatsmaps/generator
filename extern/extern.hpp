#ifndef EXTERN_HPP
#define EXTERN_HPP

#include <pthread.h>
#include <sqlite3.h>

/* *
 * @section DESCRIPTION
 *
 * We declare two variables that will be defined and used in different files.
 * @graph_barrier is a POSIX thread barrier used to synchronize the main thread that runs the GraphChi algorithm
 * and the streaming thread that streams in new edges.
 * @stream_barrier is another thread barrier. Both @graph_barrier and @stream_barrier are used to perform chunk-based graph processing.
 * @stop is used to signal whether all vertices (including the streamed ones) have been proceeded and the algorithm can stop.
 * @base_graph_constructed is used to signal whether the base graph has been constructed.
 *
 */

namespace std {
	extern pthread_barrier_t graph_barrier;
	extern pthread_barrier_t stream_barrier;
    extern int stop;
    extern bool base_graph_constructed;
    extern bool no_new_tasks;
    extern sqlite3 *db_handle;
}

#endif
