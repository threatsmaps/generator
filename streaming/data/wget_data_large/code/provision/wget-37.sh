#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --ignore-length unesco.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length usnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length clickbank.net/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length 4.cn/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length nazwa.pl/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length foxnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length pinterest.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ebay.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length archive.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length box.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length arstechnica.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length goodreads.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length phoca.cz/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length spiegel.de/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length bandcamp.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length sohu.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length cbc.ca/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length liveinternet.ru/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length archives.gov/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length 22.cn/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length linkedin.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length tucowsdomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length wikihow.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length list-manage.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length amazon.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length statcounter.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length google.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length foursquare.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-37.log
