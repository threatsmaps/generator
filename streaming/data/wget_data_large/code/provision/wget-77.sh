#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --follow-ftp fda.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp themeforest.net/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp rambler.ru/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp goo.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp phpbb.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp blogspot.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp storify.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp t.co/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp businesswire.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp pinterest.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp fb.me/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp foxnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp bola.net/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp skype.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp goo.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp dropcatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp php.net/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp wired.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp sakura.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp wixsite.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp wp.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp foxnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp 360.cn/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp sina.com.cn/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp beian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp domainname.de/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp google.nl/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-77.log
