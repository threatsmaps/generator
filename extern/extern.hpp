#ifndef __EXTERN_HPP__
#define __EXTERN_HPP__

#include <pthread.h>
/* For Visicorn */
#include <sqlite3.h>

namespace std {
    extern pthread_barrier_t graph_barrier;
    extern pthread_barrier_t stream_barrier;
    extern int stop;
    extern bool base_graph_constructed;
    extern bool no_new_tasks;
    /* SQL database for Visicorn. */
    extern sqlite3 *db;
    /* NOTE: a hack to get iteration into Visicorn SQL DB. */
    extern int db_iteration;
}

#endif /* __EXTERN_HPP__ */
