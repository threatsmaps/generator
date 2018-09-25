#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies bandcamp.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies fbcdn.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies getpocket.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.ru/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies vimeo.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies dailymail.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies phoca.cz/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies psychologytoday.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies prestashop.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies weather.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies dribbble.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies imgur.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies fb.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies usda.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies blogspot.ca/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies wunderground.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies example.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies ow.ly/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies amazon.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies cornell.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies taobao.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies wix.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hbr.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies a8.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies list-manage2.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies mozilla.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hubspot.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-31.log
