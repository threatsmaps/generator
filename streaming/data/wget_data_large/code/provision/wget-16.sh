#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-dns-cache stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache youtube.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache bit.ly/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache nih.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache aboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache mit.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache google.it/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache webmd.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache digg.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ocn.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache digg.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache nydailynews.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache smugmug.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache umblr.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache forbes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache census.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache amazonaws.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache oup.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cryoutcreations.eu/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache php.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cbsnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache forbes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ftc.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache netflix.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache amazon.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache springer.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-16.log
