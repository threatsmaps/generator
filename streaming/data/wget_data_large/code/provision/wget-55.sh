#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --ignore-length nhs.uk/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length cdbaby.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length domainnameshop.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length netflix.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length booking.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length bing.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length entrepreneur.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length shareasale.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length imgur.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length hhs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length box.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ebay.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length godaddy.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length myshopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length creativecommons.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length opensource.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length instagram.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length politico.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length jimdo.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length office.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length tumblr.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length reuters.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length geocities.jp/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length foxnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length gofundme.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length dailymotion.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length dribbble.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length foursquare.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length indiatimes.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-55.log
