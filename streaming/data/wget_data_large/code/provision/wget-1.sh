#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -q doubleclick.net/
sleep 120
/usr/local/bin/wget --tries=2 -q qq.com/
sleep 120
/usr/local/bin/wget --tries=2 -q themegrill.com/
sleep 120
/usr/local/bin/wget --tries=2 -q foxnews.com/
sleep 120
/usr/local/bin/wget --tries=2 -q dropboxusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 -q alibaba.com/
sleep 120
/usr/local/bin/wget --tries=2 -q sakura.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 -q economist.com/
sleep 120
/usr/local/bin/wget --tries=2 -q eventbrite.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -q seesaa.net/
sleep 120
/usr/local/bin/wget --tries=2 -q stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 -q uchicago.edu/
sleep 120
/usr/local/bin/wget --tries=2 -q seesaa.net/
sleep 120
/usr/local/bin/wget --tries=2 -q nhs.uk/
sleep 120
/usr/local/bin/wget --tries=2 -q 1und1.de/
sleep 120
/usr/local/bin/wget --tries=2 -q storify.com/
sleep 120
/usr/local/bin/wget --tries=2 -q ca.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q cryoutcreations.eu/
sleep 120
/usr/local/bin/wget --tries=2 -q sourceforge.net/
sleep 120
/usr/local/bin/wget --tries=2 -q ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -q ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 -q cafepress.com/
sleep 120
/usr/local/bin/wget --tries=2 -q sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 -q nbcnews.com/
sleep 120
/usr/local/bin/wget --tries=2 -q cbsnews.com/
sleep 120
/usr/local/bin/wget --tries=2 -q blogspot.jp/
sleep 120
/usr/local/bin/wget --tries=2 -q imgur.com/
sleep 120
/usr/local/bin/wget --tries=2 -q blogger.com/
sleep 120
/usr/local/bin/wget --tries=2 -q guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -q state.tx.us/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-1.log
