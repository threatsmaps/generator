#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-use-server-timestamps gofundme.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps livedoor.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps dropboxusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps weibo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps prestashop.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps hibu.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps google.co.in/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps blogspot.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps aliyun.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps imgur.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps wp.me/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps microsoft.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps google.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps googleusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps doubleclick.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps namebright.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps github.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps a8.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps themegrill.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps google.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps cdbaby.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps cnn.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps dribbble.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps list-manage2.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps kickstarter.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps unesco.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps amazon.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps mapquest.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps gesetze-im-internet.de/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-45.log
