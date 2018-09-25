#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies dropcatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies examiner.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies soundcloud.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies ed.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies feedburner.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies state.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nsw.gov.au/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies businesswire.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies rt.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies beian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies gofundme.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies parallels.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies networksolutions.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies wp.me/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies ovh.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies redcross.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies fastcompany.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.com.br/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies 360.cn/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies houzz.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies wp.me/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies who.int/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies list-manage2.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies domainname.de/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bbb.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies twitter.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies about.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies plesk.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies zdnet.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-76.log
