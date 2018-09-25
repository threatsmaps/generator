#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -q list-manage1.com/
sleep 120
/usr/local/bin/wget --tries=2 -q bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 -q xinhuanet.com/
sleep 120
/usr/local/bin/wget --tries=2 -q intel.com/
sleep 120
/usr/local/bin/wget --tries=2 -q sohu.com/
sleep 120
/usr/local/bin/wget --tries=2 -q businessweek.com/
sleep 120
/usr/local/bin/wget --tries=2 -q telegraph.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -q amazonaws.com/
sleep 120
/usr/local/bin/wget --tries=2 -q fda.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q disqus.com/
sleep 120
/usr/local/bin/wget --tries=2 -q oracle.com/
sleep 120
/usr/local/bin/wget --tries=2 -q google.es/
sleep 120
/usr/local/bin/wget --tries=2 -q cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2 -q stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 -q sina.com.cn/
sleep 120
/usr/local/bin/wget --tries=2 -q dailymotion.com/
sleep 120
/usr/local/bin/wget --tries=2 -q hud.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q statcounter.com/
sleep 120
/usr/local/bin/wget --tries=2 -q wixsite.com/
sleep 120
/usr/local/bin/wget --tries=2 -q geocities.jp/
sleep 120
/usr/local/bin/wget --tries=2 -q cnn.com/
sleep 120
/usr/local/bin/wget --tries=2 -q wixsite.com/
sleep 120
/usr/local/bin/wget --tries=2 -q go.com/
sleep 120
/usr/local/bin/wget --tries=2 -q disqus.com/
sleep 120
/usr/local/bin/wget --tries=2 -q ameblo.jp/
sleep 120
/usr/local/bin/wget --tries=2 -q google.de/
sleep 120
/usr/local/bin/wget --tries=2 -q mtv.com/
sleep 120
/usr/local/bin/wget --tries=2 -q state.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 -q wordpress.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-54.log
