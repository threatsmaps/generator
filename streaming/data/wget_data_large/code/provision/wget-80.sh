#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --content-on-error change.org/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error engadget.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error shinystat.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error sogou.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error nhs.uk/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error fotolia.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error dropbox.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error google.co.in/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error sfgate.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error ebay.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error reuters.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error indiegogo.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error secureserver.net/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error wikihow.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error apple.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error mail.ru/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error goo.gl/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error ed.gov/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error whitehouse.gov/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error 4.cn/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error marriott.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error foursquare.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error shopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error techcrunch.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error archives.gov/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error wsj.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error wunderground.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-80.log
