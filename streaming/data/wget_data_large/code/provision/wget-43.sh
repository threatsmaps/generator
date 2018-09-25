#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -N cafepress.com/
sleep 120
/usr/local/bin/wget --tries=2 -N guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -N vkontakte.ru/
sleep 120
/usr/local/bin/wget --tries=2 -N loopia.se/
sleep 120
/usr/local/bin/wget --tries=2 -N stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 -N safedog.cn/
sleep 120
/usr/local/bin/wget --tries=2 -N blogger.com/
sleep 120
/usr/local/bin/wget --tries=2 -N eventbrite.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -N clickbank.net/
sleep 120
/usr/local/bin/wget --tries=2 -N vkontakte.ru/
sleep 120
/usr/local/bin/wget --tries=2 -N admin.ch/
sleep 120
/usr/local/bin/wget --tries=2 -N loopia.se/
sleep 120
/usr/local/bin/wget --tries=2 -N usa.gov/
sleep 120
/usr/local/bin/wget --tries=2 -N skype.com/
sleep 120
/usr/local/bin/wget --tries=2 -N utexas.edu/
sleep 120
/usr/local/bin/wget --tries=2 -N feedly.com/
sleep 120
/usr/local/bin/wget --tries=2 -N mlb.com/
sleep 120
/usr/local/bin/wget --tries=2 -N google.ca/
sleep 120
/usr/local/bin/wget --tries=2 -N google.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 -N columbia.edu/
sleep 120
/usr/local/bin/wget --tries=2 -N accuweather.com/
sleep 120
/usr/local/bin/wget --tries=2 -N washingtonpost.com/
sleep 120
/usr/local/bin/wget --tries=2 -N medium.com/
sleep 120
/usr/local/bin/wget --tries=2 -N wufoo.com/
sleep 120
/usr/local/bin/wget --tries=2 -N list-manage.com/
sleep 120
/usr/local/bin/wget --tries=2 -N typepad.com/
sleep 120
/usr/local/bin/wget --tries=2 -N smh.com.au/
sleep 120
/usr/local/bin/wget --tries=2 -N mashable.com/
sleep 120
/usr/local/bin/wget --tries=2 -N one.com/
sleep 120
/usr/local/bin/wget --tries=2 -N fortune.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-43.log
