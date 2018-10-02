wget_train:
	mkdir -p wget_data_multilabel
	cd wget_data_multilabel && mkdir -p train
	number=0 ; while [ $$number -le 99 ] ; do \
		python preprocess-w3c.py ../../../../prov-ips/streamspot/experiment/wget/data/wget-normal-$$number.log wget-normal-preprocess-$$number.txt ; \
		python parse-w3c.py wget-normal-preprocess-$$number.txt wget_data_multilabel/train/base-wget-$$number.txt wget_data_multilabel/train/stream-wget-$$number.txt ; \
		rm error.log ; \
		rm wget-normal-preprocess-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

wget_test:
	mkdir -p wget_data_multilabel
	cd wget_data_multilabel && mkdir -p test
	number=0 ; while [ $$number -le 1 ] ; do \
		python preprocess-w3c.py ../../../../prov-ips/streamspot/experiment/wget/data/wget-attack-$$number.log wget-attack-preprocess-$$number.txt ; \
		python parse-w3c.py wget-attack-preprocess-$$number.txt wget_data_multilabel/test/base-wget-attack-$$number.txt wget_data_multilabel/test/stream-wget-attack-$$number.txt ; \
		rm error.log ; \
		rm wget-attack-preprocess-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

wget_train_large:
	mkdir -p wget_data_large_multilabel
	cd wget_data_large_multilabel && mkdir -p base_train && mkdir -p stream_train
	number=0 ; while [ $$number -le 99 ] ; do \
		python preprocess-w3c.py ../../../../prov-ips/streamspot/experiment/wget/data/wget-normal-$$number.log wget-normal-preprocess-$$number.txt ; \
		python parse-w3c.py wget-normal-preprocess-$$number.txt wget_data_large_multilabel/base_train/base-wget-$$number.txt wget_data_large_multilabel/stream_train/stream-wget-$$number.txt ; \
		rm error.log ; \
		rm wget-normal-preprocess-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

wget_test_large:
	mkdir -p wget_data_large_multilabel
	cd wget_data_large_multilabel && mkdir -p base_test && mkdir -p stream_test
	number=0 ; while [ $$number -le 4 ] ; do \
		python preprocess-w3c.py ../../../../prov-ips/streamspot/experiment/wget/data/wget-attack-$$number.log wget-attack-preprocess-$$number.txt ; \
		python parse-w3c.py wget-attack-preprocess-$$number.txt wget_data_large_multilabel/base_test/base-wget-attack-$$number.txt wget_data_large_multilabel/stream_test/stream-wget-attack-$$number.txt ; \
		rm error.log ; \
		rm wget-attack-preprocess-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

background:
	mkdir -p background_data_multilabel
	cd background_data_multilabel && mkdir -p base_train && mkdir -p stream_train
	number=0 ; while [ $$number -le 99 ] ; do \
		python preprocess-w3c.py ../../../../prov-ips/streamspot/experiment/openssl/data/whole-system-$$number.log whole-system-preprocess-$$number.txt ; \
		python parse-w3c.py whole-system-preprocess-$$number.txt background_data_multilabel/base_train/base-background-$$number.txt background_data_multilabel/stream_train/stream-background-$$number.txt ; \
		rm error.log ; \
		rm whole-system-preprocess-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

background_small:
	mkdir -p background_small
	cd background_small && mkdir -p base_train && mkdir -p stream_train
	number=0 ; while [ $$number -le 9 ] ; do \
		python preprocess-w3c.py ../../../../prov-ips/streamspot/experiment/openssl/data/whole-system-$$number.log whole-system-preprocess-$$number.txt ; \
		python parse-w3c.py whole-system-preprocess-$$number.txt background_small/base_train/base-background-$$number.txt background_small/stream_train/stream-background-$$number.txt ; \
		rm error.log ; \
		rm whole-system-preprocess-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

background_small_test:
	mkdir -p background_small
	cd background_small && mkdir -p base_test && mkdir -p stream_test
	python preprocess-w3c.py ../../../../prov-ips/streamspot/experiment/openssl/data/whole-system-attack.log whole-system-preprocess-$$number.txt ; \
	python parse-w3c.py whole-system-preprocess-$$number.txt background_small/base_test/base-background-attack.txt background_small/stream_test/stream-background-attack.txt ; \
	rm error.log ; \
	rm whole-system-preprocess-$$number.txt ; \