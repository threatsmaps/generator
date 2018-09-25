#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-check-certificate rs6.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate dailymail.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cryoutcreations.eu/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate aboutads.info/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate opera.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate wix.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate pinterest.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate hud.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate noaa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate livestream.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate godaddy.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate buydomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate hud.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate hud.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate nsw.gov.au/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate archive.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate amazon.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate jdoqocy.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate jimdo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate digg.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate inc.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate t-online.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate windowsphone.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate nginx.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate baidu.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cpanel.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate istockphoto.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-30.log
