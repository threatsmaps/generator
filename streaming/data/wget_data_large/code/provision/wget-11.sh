#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-check-certificate independent.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate googleusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate washingtonpost.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate arstechnica.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate google.ca/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate icann.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate rambler.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate wikia.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate nazwa.pl/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cnbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate go.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate odnoklassniki.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate examiner.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate zendesk.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate detik.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate youku.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate ted.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate 163.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate wunderground.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate mozilla.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate weibo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate ebay.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate rakuten.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate google.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate wordpress.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate oxfordjournals.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate umn.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cafepress.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-11.log
