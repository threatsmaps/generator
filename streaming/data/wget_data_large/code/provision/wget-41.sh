#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-cookies archive.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies parallels.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies hud.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies allaboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies symantec.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies mapquest.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies comsenz.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies windowsphone.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies wordpress.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies cloudfront.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies researchgate.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies hhs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies visma.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies state.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies allaboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies zendesk.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies politico.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies skype.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies house.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies zdnet.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies rakuten.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies ok.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies senate.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies dropbox.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies nbcnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies youtube.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies abc.net.au/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies hollywoodreporter.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-41.log
