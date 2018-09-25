#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --auth-no-challenge nsw.gov.au/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge economist.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge forbes.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge mijndomein.nl/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge tripadvisor.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge google.nl/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge nyu.edu/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge wixsite.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge amazon.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge dailymotion.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge techcrunch.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge jdoqocy.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge nhs.uk/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge oxfordjournals.org/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge mirror.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge shopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge allaboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge github.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge phoca.cz/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge engadget.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge youtu.be/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge instagram.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge fda.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge office.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge amazon.de/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge google.com.au/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge hp.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge blogspot.jp/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge microsoft.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-25.log
