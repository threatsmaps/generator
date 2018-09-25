#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -V opensource.org/
sleep 120
/usr/local/bin/wget --tries=2 -V smh.com.au/
sleep 120
/usr/local/bin/wget --tries=2 -V loopia.com/
sleep 120
/usr/local/bin/wget --tries=2 -V theverge.com/
sleep 120
/usr/local/bin/wget --tries=2 -V microsoft.com/
sleep 120
/usr/local/bin/wget --tries=2 -V sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 -V shareasale.com/
sleep 120
/usr/local/bin/wget --tries=2 -V vkontakte.ru/
sleep 120
/usr/local/bin/wget --tries=2 -V youronlinechoices.com/
sleep 120
/usr/local/bin/wget --tries=2 -V scribd.com/
sleep 120
/usr/local/bin/wget --tries=2 -V bit.ly/
sleep 120
/usr/local/bin/wget --tries=2 -V google.it/
sleep 120
/usr/local/bin/wget --tries=2 -V tripod.com/
sleep 120
/usr/local/bin/wget --tries=2 -V usda.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V feedly.com/
sleep 120
/usr/local/bin/wget --tries=2 -V 4.cn/
sleep 120
/usr/local/bin/wget --tries=2 -V typepad.com/
sleep 120
/usr/local/bin/wget --tries=2 -V fc2.com/
sleep 120
/usr/local/bin/wget --tries=2 -V goo.gl/
sleep 120
/usr/local/bin/wget --tries=2 -V globo.com/
sleep 120
/usr/local/bin/wget --tries=2 -V europa.eu/
sleep 120
/usr/local/bin/wget --tries=2 -V gizmodo.com/
sleep 120
/usr/local/bin/wget --tries=2 -V hostgator.com/
sleep 120
/usr/local/bin/wget --tries=2 -V campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 -V imgur.com/
sleep 120
/usr/local/bin/wget --tries=2 -V php.net/
sleep 120
/usr/local/bin/wget --tries=2 -V example.com/
sleep 120
/usr/local/bin/wget --tries=2 -V tripadvisor.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V wikipedia.org/
sleep 120
/usr/local/bin/wget --tries=2 -V youronlinechoices.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-35.log
