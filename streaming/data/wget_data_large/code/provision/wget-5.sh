#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --ignore-length cafepress.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length boston.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length adobe.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length blogspot.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length duke.edu/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length android.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length nhk.or.jp/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length usc.edu/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length rambler.ru/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length researchgate.net/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length hbr.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length foxnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length creativecommons.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length home.pl/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length gesetze-im-internet.de/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length usa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length shopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length unesco.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length change.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ap.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length wixsite.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length fotolia.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ocn.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length oracle.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length aboutads.info/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length blogspot.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length researchgate.net/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length un.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length comsenz.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-5.log
