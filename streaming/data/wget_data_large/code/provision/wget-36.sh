#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --save-headers one.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers yahoo.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers google.fr/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers wp.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers usgs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers who.int/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers one.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers tumblr.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers gizmodo.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers umd.edu/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers doubleclick.net/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers debian.org/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers blogspot.jp/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers campaign-archive1.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers sogou.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers meetup.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers goo.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers zdnet.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers mtv.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers 22.cn/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers 4.cn/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers photobucket.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers domeneshop.no/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers politico.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers dropcatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers yandex.ru/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers ted.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers usda.gov/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-36.log
