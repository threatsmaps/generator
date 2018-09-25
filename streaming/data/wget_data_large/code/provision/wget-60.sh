#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --save-headers ovh.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers ap.org/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers hubspot.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers ftc.gov/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers facebook.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers wsj.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers photobucket.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers qq.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers rollingstone.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers bluehost.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers goodreads.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers dailymail.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers tinyurl.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers behance.net/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers domeneshop.no/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers epa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers vkontakte.ru/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers feedly.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers xinhuanet.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers cloudfront.net/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers miitbeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers tripadvisor.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers nature.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers list-manage1.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers hollywoodreporter.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers googleusercontent.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-60.log
