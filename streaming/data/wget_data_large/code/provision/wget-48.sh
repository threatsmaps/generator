#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -N globo.com/
sleep 120
/usr/local/bin/wget --tries=2 -N usa.gov/
sleep 120
/usr/local/bin/wget --tries=2 -N buydomains.com/
sleep 120
/usr/local/bin/wget --tries=2 -N ted.com/
sleep 120
/usr/local/bin/wget --tries=2 -N qq.com/
sleep 120
/usr/local/bin/wget --tries=2 -N phpbb.com/
sleep 120
/usr/local/bin/wget --tries=2 -N constantcontact.com/
sleep 120
/usr/local/bin/wget --tries=2 -N detik.com/
sleep 120
/usr/local/bin/wget --tries=2 -N whitehouse.gov/
sleep 120
/usr/local/bin/wget --tries=2 -N statcounter.com/
sleep 120
/usr/local/bin/wget --tries=2 -N cnet.com/
sleep 120
/usr/local/bin/wget --tries=2 -N webs.com/
sleep 120
/usr/local/bin/wget --tries=2 -N wufoo.com/
sleep 120
/usr/local/bin/wget --tries=2 -N archive.org/
sleep 120
/usr/local/bin/wget --tries=2 -N intel.com/
sleep 120
/usr/local/bin/wget --tries=2 -N epa.gov/
sleep 120
/usr/local/bin/wget --tries=2 -N examiner.com/
sleep 120
/usr/local/bin/wget --tries=2 -N houzz.com/
sleep 120
/usr/local/bin/wget --tries=2 -N xiti.com/
sleep 120
/usr/local/bin/wget --tries=2 -N odnoklassniki.ru/
sleep 120
/usr/local/bin/wget --tries=2 -N mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 -N oecd.org/
sleep 120
/usr/local/bin/wget --tries=2 -N athemes.com/
sleep 120
/usr/local/bin/wget --tries=2 -N 22.cn/
sleep 120
/usr/local/bin/wget --tries=2 -N boston.com/
sleep 120
/usr/local/bin/wget --tries=2 -N campaign-archive1.com/
sleep 120
/usr/local/bin/wget --tries=2 -N dell.com/
sleep 120
/usr/local/bin/wget --tries=2 -N teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 -N shinystat.com/
sleep 120
/usr/local/bin/wget --tries=2 -N time.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-48.log
