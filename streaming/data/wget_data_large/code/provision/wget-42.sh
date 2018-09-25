#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-cookies youronlinechoices.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies miibeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies wix.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies yahoo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies 1und1.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies 1und1.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies wired.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies networkadvertising.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies bizjournals.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies loopia.se/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies webs.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies mapquest.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies yale.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies eventbrite.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies namebright.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies t-online.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies rt.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies digg.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies shopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies census.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies un.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies addtoany.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies techcrunch.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies nature.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies symantec.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies duke.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies jimdo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies google.pl/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-42.log
