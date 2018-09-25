prepare: prepare_wget

prepare_wget:
	sudo dnf install -y gnutls-devel
	cd /usr/share && sudo wget https://ftp.gnu.org/gnu/wget/wget-1.17.tar.gz
	cd /usr/share && sudo tar xvzf wget-1.17.tar.gz
	cd /usr/share && sudo rm wget-1.17.tar.gz
	cd /usr/share/wget-1.17 && sudo ./configure
	cd /usr/share/wget-1.17 && sudo $(MAKE)
	cd /usr/share/wget-1.17 && sudo $(MAKE) install
	cd /usr/share/wget-1.17 && sudo $(MAKE) clean

train:
	cnt=92; while [ $${cnt} -lt 100 ] ; do \
		sed -i '' "s,client.sh,provision/wget-$${cnt}.sh," Vagrantfile ; \
		sed -i '' "s/wget-[0-9]*.sh/wget-$${cnt}.sh/" Vagrantfile ; \
		vagrant up client --provision ; \
		vagrant halt client -f ; \
		cnt=`expr $$cnt + 1` ; \
	done ; \

test:
	cnt=0; while [ $${cnt} -lt 5 ] ; do \
		sed -i '' "s,provision/wget-[0-9]*.sh,client_wrapper.sh," Vagrantfile ; \
		sed -i '' "s/wget-exploit-[0-9]*.sh/wget-exploit-$${cnt}.sh/" client_wrapper.sh ; \
		vagrant up --provision ; \
		vagrant halt -f ; \
		cnt=`expr $$cnt + 1` ; \
	done ; \
