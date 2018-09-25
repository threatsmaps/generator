#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-use-server-timestamps feedburner.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ok.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps opera.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps alibaba.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps sourceforge.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps politico.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps umich.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps admin.ch/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps duke.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps tumblr.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps youtube.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps uchicago.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps box.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps theguardian.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps boston.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ameblo.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps cafepress.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps jdoqocy.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps inc.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps dell.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps discuz.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps networksolutions.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps comsenz.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps photobucket.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps engadget.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps reddit.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps pinterest.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps vk.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps archives.gov/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-29.log
