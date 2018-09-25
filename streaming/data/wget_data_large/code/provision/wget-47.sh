#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --ignore-length nationalgeographic.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length prweb.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length goo.gl/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length nasa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length hibu.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length researchgate.net/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length latimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length eepurl.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length worldbank.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length dropbox.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length blogspot.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length mapquest.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length eventbrite.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length springer.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length marketwatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length slate.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length nypost.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length delicious.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length businessinsider.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length un.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length wisc.edu/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length wordpress.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length dropcatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length dailymotion.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ebay.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ewebdevelopment.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length loopia.se/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length google.com.br/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-47.log
