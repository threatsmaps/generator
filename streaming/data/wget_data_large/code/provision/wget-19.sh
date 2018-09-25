#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --ignore-length storify.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length spiegel.de/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length wikihow.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length cpanel.net/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length inc.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length windowsphone.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ed.gov/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length googleusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length zdnet.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length wufoo.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length zdnet.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length adobe.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length nsw.gov.au/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length tripadvisor.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length admin.ch/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length irs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length bola.net/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length qq.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length hbr.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length usc.edu/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length hostgator.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length domeneshop.no/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length icio.us/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length yandex.ru/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length scribd.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length amazon.fr/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length google.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length mashable.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length xing.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-19.log
