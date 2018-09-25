#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --show-progress change.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress dailymail.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress miibeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress meetup.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress blogger.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress odnoklassniki.ru/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress hbr.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress myspace.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress feedly.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress va.gov/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress icio.us/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress 163.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress domainactive.co/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress line.me/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress doubleclick.net/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress nypost.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress dropboxusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress google.co.in/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress theguardian.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress army.mil/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress instagram.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress usnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress yelp.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress blogspot.de/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress ovh.net/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress ovh.net/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress opensource.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress nsw.gov.au/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-63.log
