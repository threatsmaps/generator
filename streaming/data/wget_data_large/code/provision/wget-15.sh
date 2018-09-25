#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --save-headers staticflickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers mozilla.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers columbia.edu/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers namejet.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers wikihow.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers 4.cn/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers umn.edu/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers rambler.ru/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers behance.net/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers 4.cn/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers about.me/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers disqus.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers sohu.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers google.com.au/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers wikia.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers cbslocal.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers loc.gov/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers icio.us/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers 22.cn/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers blogspot.com.es/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers mapquest.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers duke.edu/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers baidu.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers 360.cn/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-15.log
