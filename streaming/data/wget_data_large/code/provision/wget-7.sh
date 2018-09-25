#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bbc.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies acquirethisname.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies 123-reg.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies yale.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies kickstarter.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies livedoor.jp/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies symantec.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies tripadvisor.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies wiley.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies prweb.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies blogger.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies phpbb.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies homestead.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies duke.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies smugmug.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies businesswire.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies vimeo.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies beian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies getpocket.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies visma.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies yandex.ru/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies blogspot.ca/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies sciencemag.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies buydomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies 1und1.de/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies medium.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nazwa.pl/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies ed.gov/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-7.log
