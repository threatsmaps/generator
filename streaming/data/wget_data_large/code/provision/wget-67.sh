#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-dns-cache hilton.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache wikimedia.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache macromedia.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache wordpress.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache oxfordjournals.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache researchgate.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache change.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache safedog.cn/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cloudfront.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache bluehost.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache reddit.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache houzz.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache wufoo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cnn.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache foursquare.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache skype.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache namejet.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache foursquare.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache dropboxusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache mail.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache dot.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache usa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache nypost.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache mashable.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache trustpilot.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache blogspot.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache home.pl/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ft.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache telegraph.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache prweb.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-67.log
