#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --follow-ftp telegram.me/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp nhs.uk/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp list-manage1.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp npr.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ok.ru/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp youtu.be/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp goo.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp dell.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp bizjournals.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp independent.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ewebdevelopment.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp examiner.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp spiegel.de/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp cisco.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp medium.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp livedoor.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp rt.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp sedo.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp jimdo.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp epa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp symantec.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ebay.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp bluehost.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp tripadvisor.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp geocities.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp politico.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ox.ac.uk/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-88.log
