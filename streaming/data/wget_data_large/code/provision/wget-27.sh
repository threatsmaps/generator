#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies nytimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies wikihow.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies booking.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hatena.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies com.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies about.me/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bloomberg.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies admin.ch/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies change.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies zendesk.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies 1and1.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies staticflickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies amazonaws.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nps.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies mlb.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies eventbrite.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies geocities.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies wsj.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies columbia.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies github.io/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies cam.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.nl/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nytimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies va.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies spiegel.de/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-27.log
