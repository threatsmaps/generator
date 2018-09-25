#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-check-certificate rambler.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate google.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate globo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate inc.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate amazonaws.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate wiley.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate wired.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate dropbox.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate usc.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate imgur.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate mozilla.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate indiatimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate aliyun.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate hostgator.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate e-recht24.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate android.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate uk2.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate list-manage.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate variety.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate ewebdevelopment.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate google.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cnn.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate imdb.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate prweb.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate washington.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate noaa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cbslocal.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-66.log
