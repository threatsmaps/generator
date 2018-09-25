#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --follow-ftp mijndomein.nl/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp prweb.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp aliyun.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp yahoo.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp bls.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp xing.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp adobe.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp disqus.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp linksynergy.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp latimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp npr.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp variety.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp typepad.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp plesk.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp evernote.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ibm.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp 1688.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp prestashop.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp apache.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp wired.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp telegraph.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp symantec.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp theatlantic.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp irs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp theguardian.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp vimeo.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp 1688.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp allaboutcookies.org/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-98.log
