#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-cookies networkadvertising.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies amazon.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies domainname.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies go.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies twitter.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies house.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies washingtonpost.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies 1and1.fr/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies dreamhost.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies line.me/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies jdoqocy.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies dailymotion.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies live.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies elegantthemes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies wikimedia.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies comsenz.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies forbes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies columbia.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies free.fr/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies google.pl/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies telegram.me/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies eepurl.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies 1688.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies behance.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies blogspot.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies list-manage.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies 163.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies indiatimes.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-59.log
