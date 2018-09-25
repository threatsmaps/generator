#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --follow-ftp mashable.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp nypost.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp github.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp foursquare.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp vice.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp amazon.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp getpocket.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp youku.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp princeton.edu/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp drupal.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp weibo.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp prweb.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp storify.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp state.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp businessweek.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp domainactive.co/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp dribbble.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp bloomberg.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp umn.edu/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp goodreads.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp phoca.cz/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp vimeo.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp telegram.me/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp booking.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp sogou.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp 1und1.de/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp bigcartel.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ameblo.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp tumblr.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-78.log
