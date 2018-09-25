#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -nv list-manage.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv blogspot.ca/
sleep 120
/usr/local/bin/wget --tries=2 -nv sedo.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv addthis.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv geocities.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv fb.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv e-recht24.de/
sleep 120
/usr/local/bin/wget --tries=2 -nv cloudflare.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv instagram.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv photobucket.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv about.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 -nv sfgate.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv accuweather.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv 163.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv android.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv nyu.edu/
sleep 120
/usr/local/bin/wget --tries=2 -nv ovh.net/
sleep 120
/usr/local/bin/wget --tries=2 -nv naver.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv yelp.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv microsoft.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv dropboxusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv tripadvisor.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv microsoft.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv youronlinechoices.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv usc.edu/
sleep 120
/usr/local/bin/wget --tries=2 -nv stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv fb.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-8.log
