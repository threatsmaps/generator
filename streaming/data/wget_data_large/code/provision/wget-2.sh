#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --show-progress mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress alibaba.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress instagram.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress buydomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress list-manage2.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress va.gov/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress surveymonkey.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress cloudfront.net/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress google.ca/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress clickbank.net/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress ieee.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress delicious.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress google.ru/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress cnbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress tripod.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress 4.cn/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress msn.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress time.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress nps.gov/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress umn.edu/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress msn.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress youtu.be/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress opera.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress mijndomein.nl/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress wsj.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress ok.ru/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress sedo.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress opensource.org/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-2.log
