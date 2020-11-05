INCFLAGS = -I/usr/local/include/ -I./src/

CPP = g++
CPPFLAGS = -std=c++11 -g -ggdb $(INCFLAGS) -fopenmp -ffast-math -Wall -Wno-strict-aliasing
CPPFLAGSPG = -std=c++11 -g -O3 $(INCFLAGS) -fopenmp -Wall -Wno-strict-aliasing -lpthread -pg
LINKERFLAGS = -lpthread -L /usr/lib/x86_64-linux-gnu -lsqlite3 -lz
LINKERFLAGSPG = -lz -pg
DEBUGFLAGS = -g -ggdb $(INCFLAGS)
HEADERS=$(shell find . -name '*.hpp')


all: apps tests 
apps: example_apps/connectedcomponents example_apps/pagerank example_apps/pagerank_functional example_apps/communitydetection example_apps/unionfind_connectedcomps example_apps/stronglyconnectedcomponents example_apps/trianglecounting example_apps/randomwalks example_apps/minimumspanningforest
als: example_apps/matrix_factorization/als_edgefactors  example_apps/matrix_factorization/als_vertices_inmem
tests: tests/basic_smoketest tests/bulksync_functional_test tests/dynamicdata_smoketest tests/test_dynamicedata_loader

echo:
	echo $(HEADERS)
clean:
	@rm -rf bin/*
	cd toolkits/collaborative_filtering/; make clean; cd ../../
	cd toolkits/parsers/; make clean; cd ../../
	cd toolkits/graph_analytics/; make clean; cd ../../

blocksplitter: src/preprocessing/blocksplitter.cpp $(HEADERS)
	$(CPP) $(CPPFLAGS) src/preprocessing/blocksplitter.cpp -o bin/blocksplitter $(LINKERFLAGS)

sharder_basic: src/preprocessing/sharder_basic.cpp $(HEADERS)
	@mkdir -p bin
	$(CPP) $(CPPFLAGS) src/preprocessing/sharder_basic.cpp -o bin/sharder_basic $(LINKERFLAGS)

example_apps/% : example_apps/%.cpp $(HEADERS)
	@mkdir -p bin/$(@D)
	$(CPP) $(CPPFLAGS) -Iexample_apps/ $@.cpp -o bin/$@ $(LINKERFLAGS) 

myapps/% : myapps/%.cpp $(HEADERS)
	@mkdir -p bin/$(@D)
	$(CPP) $(CPPFLAGS) -Imyapps/ $@.cpp -o bin/$@ $(LINKERFLAGS)

tests/%: src/tests/%.cpp $(HEADERS)
	@mkdir -p bin/$(@D)
	$(CPP) $(CPPFLAGS) src/$@.cpp -o bin/$@	$(LINKERFLAGS)


graphlab_als: example_apps/matrix_factorization/graphlab_gas/als_graphlab.cpp
	$(CPP) $(CPPFLAGS) example_apps/matrix_factorization/graphlab_gas/als_graphlab.cpp -o bin/graphlab_als $(LINKERFLAGS)

cf:
	cd toolkits/collaborative_filtering/; bash ./test_eigen.sh; 
	if [ $$? -ne 0 ]; then exit 1; fi
	cd toolkits/collaborative_filtering/; make 
cf_test:
	cd toolkits/collaborative_filtering/; make test; 
cfd:
	cd toolkits/collaborative_filtering/; make -f Makefile.debug

parsers:
	cd toolkits/parsers/; make
parsersd:
	cd toolkits/parsers/; make -f Makefile.debug
ga:
	cd toolkits/graph_analytics/; make
ta:
	cd toolkits/text_analysis/; make

docs: */**
	doxygen conf/doxygen/doxygen.config

######################Unicorn Specific (Do Not Change)###############
unicorn/% : unicorn/%.cpp $(HEADERS)
	@mkdir -p bin/$(@D)
	$(CPP) $(CPPFLAGS) -Iunicorn/ $@.cpp -o bin/$@ $(LINKERFLAGS)
#####################################################################
######################Unicorn Specific (Templates)################################################
SSIZE=200
BATCH=100

viz: CPPFLAGS += -DSKETCH_SIZE=$(SSIZE) -DK_HOPS=3 -DMEMORY -DPREGEN=10000 -DVIZ -g
viz: unicorn/main

######################Unicorn Experiments################################################
camflow_toy:
	cd ../core/data && mkdir -p camflow_train_toy_sketch_2
	cd ../core/data && mkdir -p camflow_test_toy_sketch_2
	cd ../core/data && mkdir -p histogram
	cd ../core/data && mkdir -p db
	bin/unicorn/main filetype edgelist base ../core/data/camflow_test_toy_2/base/base-camflow-0.txt stream ../core/data/camflow_test_toy_2/stream/stream-camflow-0.txt decay 4000 lambda 0.02 batch 4000 sketch ../core/data/camflow_test_toy_sketch_2/sketch-test-0.txt chunkify 0 histogram ../core/data/histogram/sketch-test-0.txt db_dir ../core/data/db/ db_name attack0
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-0.txt.*
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-0.txt_*
	bin/unicorn/main filetype edgelist base ../core/data/camflow_test_toy_2/base/base-camflow-1.txt stream ../core/data/camflow_test_toy_2/stream/stream-camflow-1.txt decay 4000 lambda 0.02 batch 4000 sketch ../core/data/camflow_test_toy_sketch_2/sketch-test-1.txt chunkify 0 histogram ../core/data/histogram/sketch-test-1.txt db_dir ../core/data/db/ db_name attack1
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-1.txt.*
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-1.txt_*
	bin/unicorn/main filetype edgelist base ../core/data/camflow_test_toy_2/base/base-camflow-2.txt stream ../core/data/camflow_test_toy_2/stream/stream-camflow-2.txt decay 4000 lambda 0.02 batch 4000 sketch ../core/data/camflow_test_toy_sketch_2/sketch-test-2.txt chunkify 0 histogram ../core/data/histogram/sketch-test-2.txt db_dir ../core/data/db/ db_name attack2
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-2.txt.*
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-2.txt_*
	bin/unicorn/main filetype edgelist base ../core/data/camflow_test_toy_2/base/base-camflow-3.txt stream ../core/data/camflow_test_toy_2/stream/stream-camflow-3.txt decay 4000 lambda 0.02 batch 4000 sketch ../core/data/camflow_test_toy_sketch_2/sketch-test-3.txt chunkify 0 histogram ../core/data/histogram/sketch-test-3.txt db_dir ../core/data/db/ db_name attack3
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-3.txt.*
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-3.txt_*
	bin/unicorn/main filetype edgelist base ../core/data/camflow_test_toy_2/base/base-camflow-4.txt stream ../core/data/camflow_test_toy_2/stream/stream-camflow-4.txt decay 4000 lambda 0.02 batch 4000 sketch ../core/data/camflow_test_toy_sketch_2/sketch-test-4.txt chunkify 0 histogram ../core/data/histogram/sketch-test-4.txt db_dir ../core/data/db/ db_name attack4
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-4.txt.*
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-4.txt_*
	bin/unicorn/main filetype edgelist base ../core/data/camflow_test_toy_2/base/base-camflow-5.txt stream ../core/data/camflow_test_toy_2/stream/stream-camflow-5.txt decay 4000 lambda 0.02 batch 4000 sketch ../core/data/camflow_test_toy_sketch_2/sketch-test-5.txt chunkify 0 histogram ../core/data/histogram/sketch-test-5.txt db_dir ../core/data/db/ db_name attack5
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-5.txt.*
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-5.txt_*
	bin/unicorn/main filetype edgelist base ../core/data/camflow_test_toy_2/base/base-camflow-6.txt stream ../core/data/camflow_test_toy_2/stream/stream-camflow-6.txt decay 4000 lambda 0.02 batch 4000 sketch ../core/data/camflow_test_toy_sketch_2/sketch-test-6.txt chunkify 0 histogram ../core/data/histogram/sketch-test-6.txt db_dir ../core/data/db/ db_name attack6
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-6.txt.*
	rm -rf ../core/data/camflow_test_toy_2/base/base-camflow-6.txt_*
	bin/unicorn/main filetype edgelist base ../core/data/camflow_train_toy_2/base/base-camflow-0.txt stream ../core/data/camflow_train_toy_2/stream/stream-camflow-0.txt decay 4000 lambda 0.02 batch 4000 sketch ../core/data/camflow_train_toy_sketch_2/sketch-train-0.txt chunkify 0 histogram ../core/data/histogram/sketch-train-0.txt db_dir ../core/data/db/ db_name normal0
	rm -rf ../core/data/camflow_train_toy_2/base/base-camflow-0.txt.*
	rm -rf ../core/data/camflow_train_toy_2/base/base-camflow-0.txt_*
	bin/unicorn/main filetype edgelist base ../core/data/camflow_train_toy_2/base/base-camflow-1.txt stream ../core/data/camflow_train_toy_2/stream/stream-camflow-1.txt decay 4000 lambda 0.02 batch 4000 sketch ../core/data/camflow_train_toy_sketch_2/sketch-train-1.txt chunkify 0 histogram ../core/data/histogram/sketch-train-1.txt db_dir ../core/data/db/ db_name normal1
	rm -rf ../core/data/camflow_train_toy_2/base/base-camflow-1.txt.*
	rm -rf ../core/data/camflow_train_toy_2/base/base-camflow-1.txt_*

visicorn_toy:
	cd ../core/data && mkdir -p visicorn_sketch
	cd ../core/data && mkdir -p vizhistogram
	cd ../core/data && mkdir -p vizdb
	number=0 ; while [ $$number -le 24 ] ; do \
	       bin/unicorn/main filetype edgelist base ../core/data/visicorn_parsed/base/base-read-only-$$number.txt stream ../core/data/visicorn_parsed/stream/stream-read-only-$$number.txt decay 200 lambda 0.02 batch $(BATCH) sketch ../core/data/visicorn_sketch/sketch-read-only-$$number.txt chunkify 0 histogram ../core/data/vizhistogram/sketch-read-only-$$number.txt db_dir ../core/data/vizdb/ db_name read_only_$$number ; \
	       rm -rf ../core/data/visicorn_parsed/base/base-read-only-$$number.txt.* ; \
	       rm -rf ../core/data/visicorn_parsed/base/base-read-only-$$number.txt_* ; \
	       number=`expr $$number + 1` ; \
	done
	number=0 ; while [ $$number -le 4 ] ; do \
	       bin/unicorn/main filetype edgelist base ../core/data/visicorn_parsed/base/base-read-socket-$$number.txt stream ../core/data/visicorn_parsed/stream/stream-read-socket-$$number.txt decay 200 lambda 0.02 batch $(BATCH) sketch ../core/data/visicorn_sketch/sketch-read-socket-$$number.txt chunkify 0 histogram ../core/data/vizhistogram/sketch-read-socket-$$number.txt db_dir ../core/data/vizdb/ db_name read_socket_$$number ; \
	       rm -rf ../core/data/visicorn_parsed/base/base-read-socket-$$number.txt.* ; \
	       rm -rf ../core/data/visicorn_parsed/base/base-read-socket-$$number.txt_* ; \
	       number=`expr $$number + 1` ; \
	done
	number=0 ; while [ $$number -le 4 ] ; do \
	       bin/unicorn/main filetype edgelist base ../core/data/visicorn_parsed/base/base-read-stat-$$number.txt stream ../core/data/visicorn_parsed/stream/stream-read-stat-$$number.txt decay 200 lambda 0.02 batch $(BATCH) sketch ../core/data/visicorn_sketch/sketch-read-stat-$$number.txt chunkify 0 histogram ../core/data/vizhistogram/sketch-read-stat-$$number.txt db_dir ../core/data/vizdb/ db_name read_stat_$$number ; \
	       rm -rf ../core/data/visicorn_parsed/base/base-read-stat-$$number.txt.* ; \
	       rm -rf ../core/data/visicorn_parsed/base/base-read-stat-$$number.txt_* ; \
	       number=`expr $$number + 1` ; \
	done
	number=0 ; while [ $$number -le 4 ] ; do \
	       bin/unicorn/main filetype edgelist base ../core/data/visicorn_parsed/base/base-read-write-$$number.txt stream ../core/data/visicorn_parsed/stream/stream-read-write-$$number.txt decay 200 lambda 0.02 batch $(BATCH) sketch ../core/data/visicorn_sketch/sketch-read-write-$$number.txt chunkify 0 histogram ../core/data/vizhistogram/sketch-read-write-$$number.txt db_dir ../core/data/vizdb/ db_name read_write_$$number ; \
	       rm -rf ../core/data/visicorn_parsed/base/base-read-write-$$number.txt.* ; \
	       rm -rf ../core/data/visicorn_parsed/base/base-read-write-$$number.txt_* ; \
	       number=`expr $$number + 1` ; \
	done

