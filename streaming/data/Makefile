youtube_v2:
	cd streamspot_data && mkdir -p youtube_data_v2
	cd streamspot_data/youtube_data_v2 && mkdir -p base_train && mkdir -p stream_train && mkdir -p base_test && mkdir -p stream_test
	number=0 ; while [ $$number -le 99 ] ; do \
		python preprocess-ss-v2.py $$number all.tsv base-youtube-v2-$$number.txt stream-youtube-v2-$$number.txt ; \
		mv base-youtube-v2-$$number.txt streamspot_data/youtube_data_v2/base_train ; \
		mv stream-youtube-v2-$$number.txt streamspot_data/youtube_data_v2/stream_train ; \
		number=`expr $$number + 1` ; \
	done

gmail_v2:
	cd streamspot_data && mkdir -p gmail_data_v2
	cd streamspot_data/gmail_data_v2 && mkdir -p base_train && mkdir -p stream_train && mkdir -p base_test && mkdir -p stream_test
	number=100 ; while [ $$number -le 199 ] ; do \
		python preprocess-ss-v2.py $$number all.tsv base-gmail-v2-$$number.txt stream-gmail-v2-$$number.txt ; \
		mv base-gmail-v2-$$number.txt streamspot_data/gmail_data_v2/base_train ; \
		mv stream-gmail-v2-$$number.txt streamspot_data/gmail_data_v2/stream_train ; \
		number=`expr $$number + 1` ; \
	done

vgame_v2:
	cd streamspot_data && mkdir -p vgame_data_v2
	cd streamspot_data/vgame_data_v2 && mkdir -p base_train && mkdir -p stream_train && mkdir -p base_test && mkdir -p stream_test
	number=200 ; while [ $$number -le 299 ] ; do \
		python preprocess-ss-v2.py $$number all.tsv base-vgame-v2-$$number.txt stream-vgame-v2-$$number.txt ; \
		mv base-vgame-v2-$$number.txt streamspot_data/vgame_data_v2/base_train ; \
		mv stream-vgame-v2-$$number.txt streamspot_data/vgame_data_v2/stream_train ; \
		number=`expr $$number + 1` ; \
	done

attack_v2:
	cd streamspot_data && mkdir -p attack_data_v2
	cd streamspot_data/attack_data_v2 && mkdir -p base_train && mkdir -p stream_train && mkdir -p base_test && mkdir -p stream_test
	number=300 ; while [ $$number -le 399 ] ; do \
		python preprocess-ss-v2.py $$number all.tsv base-attack-v2-$$number.txt stream-attack-v2-$$number.txt ; \
		mv base-attack-v2-$$number.txt streamspot_data/attack_data_v2/base_train ; \
		mv stream-attack-v2-$$number.txt streamspot_data/attack_data_v2/stream_train ; \
		number=`expr $$number + 1` ; \
	done

download_v2:
	cd streamspot_data && mkdir -p download_data_v2
	cd streamspot_data/download_data_v2 && mkdir -p base_train && mkdir -p stream_train && mkdir -p base_test && mkdir -p stream_test
	number=400 ; while [ $$number -le 499 ] ; do \
		python preprocess-ss-v2.py $$number all.tsv base-download-v2-$$number.txt stream-download-v2-$$number.txt ; \
		mv base-download-v2-$$number.txt streamspot_data/download_data_v2/base_train ; \
		mv stream-download-v2-$$number.txt streamspot_data/download_data_v2/stream_train ; \
		number=`expr $$number + 1` ; \
	done

cnn_v2:
	cd streamspot_data && mkdir -p cnn_data_v2
	cd streamspot_data/cnn_data_v2 && mkdir -p base_train && mkdir -p stream_train && mkdir -p base_test && mkdir -p stream_test
	number=500 ; while [ $$number -le 599 ] ; do \
		python preprocess-ss-v2.py $$number all.tsv base-cnn-v2-$$number.txt stream-cnn-v2-$$number.txt ; \
		mv base-cnn-v2-$$number.txt streamspot_data/cnn_data_v2/base_train ; \
		mv stream-cnn-v2-$$number.txt streamspot_data/cnn_data_v2/stream_train ; \
		number=`expr $$number + 1` ; \
	done

wget:
	mkdir -p wget_data
	cd wget_data && mkdir -p train
	number=0 ; while [ $$number -le 99 ] ; do \
		python preprocess-camflow.py $$number train_edges_wget.txt wget_data/train/base-wget-$$number.txt wget_data/train/stream-wget-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

wget_attack:
	mkdir -p wget_data
	cd wget_data && mkdir -p test
	python preprocess-camflow.py 0 attack_edges_wget.txt wget_data/test/base-wget-attack.txt wget_data/test/stream-wget-attack.txt

wget_large:
	mkdir -p wget_data_large
	cd wget_data_large && mkdir -p base_train && mkdir -p stream_train && mkdir -p base_test && mkdir -p stream_test
	number=0 ; while [ $$number -le 99 ] ; do \
		python preprocess-camflow.py $$number train_edges_wget_large.txt wget_data_large/base_train/base-wget-$$number.txt wget_data_large/stream_train/stream-wget-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

wget_attack_large:
	number=0 ; while [ $$number -le 5 ] ; do \
		python preprocess-camflow.py $$number test_edges_wget_large.txt wget_data_large/base_test/base-wget-attack-$$number.txt wget_data_large/stream_test/stream-wget-attack-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done





