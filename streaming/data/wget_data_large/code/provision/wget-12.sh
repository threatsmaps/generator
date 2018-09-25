#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2   change.org/
sleep 120
/usr/local/bin/wget --tries=2   cnbc.com/
sleep 120
/usr/local/bin/wget --tries=2   wufoo.com/
sleep 120
/usr/local/bin/wget --tries=2   census.gov/
sleep 120
/usr/local/bin/wget --tries=2   office.com/
sleep 120
/usr/local/bin/wget --tries=2   bizjournals.com/
sleep 120
/usr/local/bin/wget --tries=2   google.pl/
sleep 120
/usr/local/bin/wget --tries=2   washingtonpost.com/
sleep 120
/usr/local/bin/wget --tries=2   cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2   ed.gov/
sleep 120
/usr/local/bin/wget --tries=2   plesk.com/
sleep 120
/usr/local/bin/wget --tries=2   cryoutcreations.eu/
sleep 120
/usr/local/bin/wget --tries=2   eventbrite.co.uk/
sleep 120
/usr/local/bin/wget --tries=2   zdnet.com/
sleep 120
/usr/local/bin/wget --tries=2   census.gov/
sleep 120
/usr/local/bin/wget --tries=2   cornell.edu/
sleep 120
/usr/local/bin/wget --tries=2   sina.com.cn/
sleep 120
/usr/local/bin/wget --tries=2   sakura.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2   list-manage2.com/
sleep 120
/usr/local/bin/wget --tries=2   buydomains.com/
sleep 120
/usr/local/bin/wget --tries=2   plesk.com/
sleep 120
/usr/local/bin/wget --tries=2   nifty.com/
sleep 120
/usr/local/bin/wget --tries=2   campaign-archive1.com/
sleep 120
/usr/local/bin/wget --tries=2   blogspot.co.uk/
sleep 120
/usr/local/bin/wget --tries=2   t-online.de/
sleep 120
/usr/local/bin/wget --tries=2   biglobe.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2   guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2   fortune.com/
sleep 120
/usr/local/bin/wget --tries=2   allaboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2   symantec.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-12.log
