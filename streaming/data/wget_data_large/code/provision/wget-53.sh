#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-check-certificate opera.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate behance.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate blogspot.com.es/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate tmall.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate aboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate marketwatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate tmall.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate 51.la/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate elegantthemes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate tucowsdomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate hud.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate psychologytoday.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate mail.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate telegraph.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cbslocal.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate unesco.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate vk.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate xing.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate linkedin.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate hhs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate clickbank.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate phoca.cz/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate themegrill.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate mapquest.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-53.log
