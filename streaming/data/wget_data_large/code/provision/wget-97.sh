#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2   linksynergy.com/
sleep 120
/usr/local/bin/wget --tries=2   sedo.com/
sleep 120
/usr/local/bin/wget --tries=2   prestashop.com/
sleep 120
/usr/local/bin/wget --tries=2   bluehost.com/
sleep 120
/usr/local/bin/wget --tries=2   geocities.com/
sleep 120
/usr/local/bin/wget --tries=2   cdbaby.com/
sleep 120
/usr/local/bin/wget --tries=2   adobe.com/
sleep 120
/usr/local/bin/wget --tries=2   php.net/
sleep 120
/usr/local/bin/wget --tries=2   msn.com/
sleep 120
/usr/local/bin/wget --tries=2   sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2   livestream.com/
sleep 120
/usr/local/bin/wget --tries=2   change.org/
sleep 120
/usr/local/bin/wget --tries=2   bmj.com/
sleep 120
/usr/local/bin/wget --tries=2   ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2   adobe.com/
sleep 120
/usr/local/bin/wget --tries=2   change.org/
sleep 120
/usr/local/bin/wget --tries=2   telegraph.co.uk/
sleep 120
/usr/local/bin/wget --tries=2   medium.com/
sleep 120
/usr/local/bin/wget --tries=2   houzz.com/
sleep 120
/usr/local/bin/wget --tries=2   hud.gov/
sleep 120
/usr/local/bin/wget --tries=2   duke.edu/
sleep 120
/usr/local/bin/wget --tries=2   mashable.com/
sleep 120
/usr/local/bin/wget --tries=2   globo.com/
sleep 120
/usr/local/bin/wget --tries=2   mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2   trustpilot.com/
sleep 120
/usr/local/bin/wget --tries=2   theguardian.com/
sleep 120
/usr/local/bin/wget --tries=2   wp.me/
sleep 120
/usr/local/bin/wget --tries=2   indiatimes.com/
sleep 120
/usr/local/bin/wget --tries=2   va.gov/
sleep 120
/usr/local/bin/wget --tries=2   taobao.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-97.log
