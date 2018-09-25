#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-cookies register.it/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies microsoft.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies today.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies utexas.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies adobe.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies accuweather.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies umn.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies boston.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies dropboxusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies umn.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies trustpilot.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies wufoo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies digg.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies aol.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies uol.com.br/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies wikipedia.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies 4.cn/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies dribbble.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies box.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies drupal.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies hollywoodreporter.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies variety.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies si.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies nypost.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies hostnet.nl/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies opensource.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies google.es/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies networkadvertising.org/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-57.log
