#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -V princeton.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V qq.com/
sleep 120
/usr/local/bin/wget --tries=2 -V blogger.com/
sleep 120
/usr/local/bin/wget --tries=2 -V guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V google.com/
sleep 120
/usr/local/bin/wget --tries=2 -V slate.com/
sleep 120
/usr/local/bin/wget --tries=2 -V va.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V fda.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V yelp.com/
sleep 120
/usr/local/bin/wget --tries=2 -V time.com/
sleep 120
/usr/local/bin/wget --tries=2 -V guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 -V miitbeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 -V yelp.com/
sleep 120
/usr/local/bin/wget --tries=2 -V apple.com/
sleep 120
/usr/local/bin/wget --tries=2 -V wikia.com/
sleep 120
/usr/local/bin/wget --tries=2 -V youtube.com/
sleep 120
/usr/local/bin/wget --tries=2 -V 22.cn/
sleep 120
/usr/local/bin/wget --tries=2 -V storify.com/
sleep 120
/usr/local/bin/wget --tries=2 -V plesk.com/
sleep 120
/usr/local/bin/wget --tries=2 -V usnews.com/
sleep 120
/usr/local/bin/wget --tries=2 -V github.io/
sleep 120
/usr/local/bin/wget --tries=2 -V campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 -V w3.org/
sleep 120
/usr/local/bin/wget --tries=2 -V bls.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V geocities.jp/
sleep 120
/usr/local/bin/wget --tries=2 -V cdc.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V linksynergy.com/
sleep 120
/usr/local/bin/wget --tries=2 -V wiley.com/
sleep 120
/usr/local/bin/wget --tries=2 -V shop-pro.jp/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-38.log
