#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies feedly.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies techcrunch.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies plesk.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies npr.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies slate.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies myspace.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hostnet.nl/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies joomla.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies elegantthemes.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.co.in/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies psychologytoday.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies fastcompany.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies cafepress.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies noaa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies uchicago.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies mozilla.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.co.in/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies mail.ru/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies psu.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies plesk.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies xinhuanet.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies europa.eu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies gnu.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies meetup.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies istockphoto.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies booking.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies aliyun.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-65.log
