#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies miitbeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.co.in/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies rt.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies twitter.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies gizmodo.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies apache.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies wp.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies berkeley.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies shop-pro.jp/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bit.ly/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies godaddy.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies usc.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies creativecommons.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies microsoft.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies com.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nsw.gov.au/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies jugem.jp/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies businessinsider.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies php.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies opensource.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies cisco.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies irs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies shinystat.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies usnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies discuz.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies webs.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-14.log
