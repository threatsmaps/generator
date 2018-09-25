#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -o /dev/null yale.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null free.fr/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null sohu.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null census.gov/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null google.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null amazon.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null clickbank.net/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null who.int/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null dropcatch.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null nih.gov/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null lifehacker.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null gnu.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null google.it/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null twitter.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null mail.ru/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null rt.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null cnn.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null goo.gl/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null zdnet.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null foursquare.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null tripadvisor.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null springer.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null google.pl/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null walmart.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null clickbank.net/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null opensource.org/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-9.log
