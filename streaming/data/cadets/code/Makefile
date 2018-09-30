define truncate_data
	sed -n '$(1),$(2)p;$(3)q' $(4).json | ../build/pvm2csv - ../data/output_$(4)_$(5).zip ; \
	mkdir ../data/output_$(4)_$(5) ; \
	unzip ../data/output_$(4)_$(5).zip -d ../data/output_$(4)_$(5) ; \
	rm ../data/output_$(4)_$(5).zip
endef

benign1:
	$(call truncate_data,1,513275,513276,benign1,1)
	$(call truncate_data,513276,1026550,1026551,benign1,2)
	$(call truncate_data,1026551,1539825,1539826,benign1,3)
	$(call truncate_data,1539826,2053100,2053101,benign1,4)
	$(call truncate_data,2053101,2566375,2566376,benign1,5)
	$(call truncate_data,2566376,3079650,3079651,benign1,6)
	$(call truncate_data,3079651,3592925,3592926,benign1,7)
	$(call truncate_data,3592926,4106200,4106201,benign1,8)
	$(call truncate_data,4106201,4619475,4619476,benign1,9)
	$(call truncate_data,4619476,5132758,5132758,benign1,10)
	
parse1:
	python parser.py output_benign1_1 edgelist1_1.txt
	python parser.py output_benign1_2 edgelist1_2.txt
	python parser.py output_benign1_3 edgelist1_3.txt
	python parser.py output_benign1_4 edgelist1_4.txt
	python parser.py output_benign1_5 edgelist1_5.txt
	python parser.py output_benign1_6 edgelist1_6.txt
	python parser.py output_benign1_7 edgelist1_7.txt
	python parser.py output_benign1_8 edgelist1_8.txt
	python parser.py output_benign1_9 edgelist1_9.txt
	python parser.py output_benign1_10 edgelist1_10.txt

benign2:
	$(call truncate_data,1,77957,77958,benign2,1)
	$(call truncate_data,77958,155914,155915,benign2,2)
	$(call truncate_data,155915,233871,233872,benign2,3)
	$(call truncate_data,233872,311828,311829,benign2,4)
	$(call truncate_data,311829,389785,389786,benign2,5)
	$(call truncate_data,389786,467742,467743,benign2,6)
	$(call truncate_data,467743,545699,545700,benign2,7)
	$(call truncate_data,545700,623656,623657,benign2,8)
	$(call truncate_data,623657,701613,701614,benign2,9)
	$(call truncate_data,701614,779577,779578,benign2,10)

parse2:
	python parser.py output_benign2_1 edgelist2_1.txt
	python parser.py output_benign2_2 edgelist2_2.txt
	python parser.py output_benign2_3 edgelist2_3.txt
	python parser.py output_benign2_4 edgelist2_4.txt
	python parser.py output_benign2_5 edgelist2_5.txt
	python parser.py output_benign2_6 edgelist2_6.txt
	python parser.py output_benign2_7 edgelist2_7.txt
	python parser.py output_benign2_8 edgelist2_8.txt
	python parser.py output_benign2_9 edgelist2_9.txt
	python parser.py output_benign2_10 edgelist2_10.txt

benign3:
	$(call truncate_data,1,558195,558196,benign3,1)
	$(call truncate_data,558196,1116390,1116391,benign3,2)
	$(call truncate_data,1116391,1674585,1674586,benign3,3)
	$(call truncate_data,1674586,2232780,2232781,benign3,4)
	$(call truncate_data,2232781,2790975,2790976,benign3,5)
	$(call truncate_data,2790976,3349170,3349171,benign3,6)
	$(call truncate_data,3349171,3907365,3907366,benign3,7)
	$(call truncate_data,3907366,4465560,4465561,benign3,8)
	$(call truncate_data,4465561,5023755,5023756,benign3,9)
	$(call truncate_data,5023756,5581951,5581952,benign3,10)

parse3:
	python parser.py output_benign3_1 edgelist3_1.txt
	python parser.py output_benign3_2 edgelist3_2.txt
	python parser.py output_benign3_3 edgelist3_3.txt
	python parser.py output_benign3_4 edgelist3_4.txt
	python parser.py output_benign3_5 edgelist3_5.txt
	python parser.py output_benign3_6 edgelist3_6.txt
	python parser.py output_benign3_7 edgelist3_7.txt
	python parser.py output_benign3_8 edgelist3_8.txt
	python parser.py output_benign3_9 edgelist3_9.txt
	python parser.py output_benign3_10 edgelist3_10.txt

train_data:
	mkdir -p cadet_data_train
	cd cadet_data_train && mkdir -p base_train && mkdir -p stream_train
	number=1 ; while [ $$number -le 10 ] ; do \
		python post-process.py ../data/edgelist1_$$number.txt cadet_data_train/base_train/base-cadets-benign1-$$number.txt cadet_data_train/stream_train/stream-cadets-benign1-$$number.txt ; \
		python post-process.py ../data/edgelist2_$$number.txt cadet_data_train/base_train/base-cadets-benign2-$$number.txt cadet_data_train/stream_train/stream-cadets-benign2-$$number.txt ; \
		python post-process.py ../data/edgelist3_$$number.txt cadet_data_train/base_train/base-cadets-benign3-$$number.txt cadet_data_train/stream_train/stream-cadets-benign3-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done

pandex:
	$(call truncate_data,1,1093940,1093941,pandex,1)
	$(call truncate_data,1093941,2187880,2187881,pandex,2)
	$(call truncate_data,2187881,3281820,3281821,pandex,3)
	$(call truncate_data,3281821,4375760,4375761,pandex,4)
	$(call truncate_data,4375761,5469700,5469701,pandex,5)
	$(call truncate_data,5469701,6563640,6563641,pandex,6)
	$(call truncate_data,6563641,7657580,7657581,pandex,7)
	$(call truncate_data,7657581,8751520,8751521,pandex,8)
	$(call truncate_data,8751521,9845460,9845461,pandex,9)
	$(call truncate_data,9845461,10939405,10939406,pandex,10)

parsep:
	python parser.py output_pandex_1 edgelistp_1.txt
	python parser.py output_pandex_2 edgelistp_2.txt
	python parser.py output_pandex_3 edgelistp_3.txt
	python parser.py output_pandex_4 edgelistp_4.txt
	python parser.py output_pandex_5 edgelistp_5.txt
	python parser.py output_pandex_6 edgelistp_6.txt
	python parser.py output_pandex_7 edgelistp_7.txt
	python parser.py output_pandex_8 edgelistp_8.txt
	python parser.py output_pandex_9 edgelistp_9.txt
	python parser.py output_pandex_10 edgelistp_10.txt

test_data:
	mkdir -p cadet_data_test
	cd cadet_data_test && mkdir -p base_test && mkdir -p stream_test
	number=1 ; while [ $$number -le 10 ] ; do \
		python post-process.py ../data/edgelistp_$$number.txt cadet_data_test/base_test/base-cadets-pandex-attack-$$number.txt cadet_data_test/stream_test/stream-cadets-pandex-attack-$$number.txt ; \
		number=`expr $$number + 1` ; \
	done