#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -nv stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv hostgator.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv domeneshop.no/
sleep 120
/usr/local/bin/wget --tries=2 -nv livestream.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv hilton.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv hibu.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv mail.ru/
sleep 120
/usr/local/bin/wget --tries=2 -nv blogspot.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv accuweather.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv liveinternet.ru/
sleep 120
/usr/local/bin/wget --tries=2 -nv google.es/
sleep 120
/usr/local/bin/wget --tries=2 -nv sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv theglobeandmail.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv linkedin.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv livedoor.jp/
sleep 120
/usr/local/bin/wget --tries=2 -nv presscustomizr.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv dropboxusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv myshopify.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv opera.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv ibm.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv rs6.net/
sleep 120
/usr/local/bin/wget --tries=2 -nv gofundme.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv doi.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv phpbb.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv blogspot.de/
sleep 120
/usr/local/bin/wget --tries=2 -nv nhs.uk/
sleep 120
/usr/local/bin/wget --tries=2 -nv smugmug.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv wikipedia.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv cpanel.net/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-32.log
