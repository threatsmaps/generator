#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2   ewebdevelopment.com/
sleep 120
/usr/local/bin/wget --tries=2   t-online.de/
sleep 120
/usr/local/bin/wget --tries=2   examiner.com/
sleep 120
/usr/local/bin/wget --tries=2   bbc.com/
sleep 120
/usr/local/bin/wget --tries=2   weather.com/
sleep 120
/usr/local/bin/wget --tries=2   google.pl/
sleep 120
/usr/local/bin/wget --tries=2   zdnet.com/
sleep 120
/usr/local/bin/wget --tries=2   miitbeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2   dell.com/
sleep 120
/usr/local/bin/wget --tries=2   time.com/
sleep 120
/usr/local/bin/wget --tries=2   senate.gov/
sleep 120
/usr/local/bin/wget --tries=2   google.pl/
sleep 120
/usr/local/bin/wget --tries=2   google.de/
sleep 120
/usr/local/bin/wget --tries=2   zendesk.com/
sleep 120
/usr/local/bin/wget --tries=2   ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2   dell.com/
sleep 120
/usr/local/bin/wget --tries=2   netflix.com/
sleep 120
/usr/local/bin/wget --tries=2   google.de/
sleep 120
/usr/local/bin/wget --tries=2   box.com/
sleep 120
/usr/local/bin/wget --tries=2   ca.gov/
sleep 120
/usr/local/bin/wget --tries=2   smh.com.au/
sleep 120
/usr/local/bin/wget --tries=2   rs6.net/
sleep 120
/usr/local/bin/wget --tries=2   bestfwdservice.com/
sleep 120
/usr/local/bin/wget --tries=2   1688.com/
sleep 120
/usr/local/bin/wget --tries=2   acquirethisname.com/
sleep 120
/usr/local/bin/wget --tries=2   xinhuanet.com/
sleep 120
/usr/local/bin/wget --tries=2   addtoany.com/
sleep 120
/usr/local/bin/wget --tries=2   nifty.com/
sleep 120
/usr/local/bin/wget --tries=2   theverge.com/
sleep 120
/usr/local/bin/wget --tries=2   gizmodo.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-86.log
