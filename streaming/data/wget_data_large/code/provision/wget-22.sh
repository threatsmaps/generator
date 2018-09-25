#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --ignore-length feedburner.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length telegram.me/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length livejournal.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ft.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length linkedin.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length drupal.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length exblog.jp/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length safedog.cn/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length go.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length register.it/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length nature.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length vk.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length 123-reg.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length examiner.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length huffingtonpost.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length google.ca/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length nypost.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length delicious.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length marriott.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length oracle.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length theatlantic.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length tandfonline.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length bloomberg.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length list-manage2.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length nbcnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length change.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length forbes.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-22.log
