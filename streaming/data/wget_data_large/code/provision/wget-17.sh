#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-check-certificate senate.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate upenn.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate gnu.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate wikipedia.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate businessweek.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate dell.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate icann.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate admin.ch/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate google.nl/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate surveymonkey.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate alibaba.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate oxfordjournals.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate icann.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate yahoo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate researchgate.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate medium.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate 123-reg.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate wisc.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate joomla.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate miibeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cnn.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate archives.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate google.es/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cbslocal.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate wikia.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate washington.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate one.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate gizmodo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate pbs.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate domainactive.co/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-17.log
