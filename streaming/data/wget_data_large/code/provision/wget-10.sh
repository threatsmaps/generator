#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-cookies aliyun.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies miibeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies fc2.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies berkeley.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies directdomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies ftc.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies who.int/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies cornell.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies columbia.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies globo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies t-online.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies cdbaby.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies archives.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies box.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies homestead.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies ok.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies goo.gl/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies techcrunch.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies whitehouse.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies twitch.tv/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies icio.us/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies phpbb.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies npr.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies 1and1.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies scribd.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies plesk.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-10.log
