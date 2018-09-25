#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --content-on-error aboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error princeton.edu/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error marriott.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error wp.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error github.io/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error wufoo.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error live.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error chicagotribune.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error fb.me/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error shop-pro.jp/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error vk.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error blogger.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error sfgate.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error namebright.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error vkontakte.ru/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error visma.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error wisc.edu/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error usc.edu/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error hollywoodreporter.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error squarespace.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error marketwatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error php.net/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error comsenz.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error android.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error newyorker.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error yahoo.co.jp/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-44.log
