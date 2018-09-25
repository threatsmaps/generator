#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -q scribd.com/
sleep 120
/usr/local/bin/wget --tries=2 -q php.net/
sleep 120
/usr/local/bin/wget --tries=2 -q shareasale.com/
sleep 120
/usr/local/bin/wget --tries=2 -q theguardian.com/
sleep 120
/usr/local/bin/wget --tries=2 -q scribd.com/
sleep 120
/usr/local/bin/wget --tries=2 -q hilton.com/
sleep 120
/usr/local/bin/wget --tries=2 -q liveinternet.ru/
sleep 120
/usr/local/bin/wget --tries=2 -q whitehouse.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q trustpilot.com/
sleep 120
/usr/local/bin/wget --tries=2 -q whoisprivacyprotect.com/
sleep 120
/usr/local/bin/wget --tries=2 -q xiti.com/
sleep 120
/usr/local/bin/wget --tries=2 -q bandcamp.com/
sleep 120
/usr/local/bin/wget --tries=2 -q politico.com/
sleep 120
/usr/local/bin/wget --tries=2 -q oecd.org/
sleep 120
/usr/local/bin/wget --tries=2 -q sourceforge.net/
sleep 120
/usr/local/bin/wget --tries=2 -q trustpilot.com/
sleep 120
/usr/local/bin/wget --tries=2 -q pbs.org/
sleep 120
/usr/local/bin/wget --tries=2 -q hostnet.nl/
sleep 120
/usr/local/bin/wget --tries=2 -q sedo.com/
sleep 120
/usr/local/bin/wget --tries=2 -q telegram.me/
sleep 120
/usr/local/bin/wget --tries=2 -q webmd.com/
sleep 120
/usr/local/bin/wget --tries=2 -q fbcdn.net/
sleep 120
/usr/local/bin/wget --tries=2 -q slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2 -q free.fr/
sleep 120
/usr/local/bin/wget --tries=2 -q campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 -q uchicago.edu/
sleep 120
/usr/local/bin/wget --tries=2 -q fc2.com/
sleep 120
/usr/local/bin/wget --tries=2 -q icio.us/
sleep 120
/usr/local/bin/wget --tries=2 -q xinhuanet.com/
sleep 120
/usr/local/bin/wget --tries=2 -q utexas.edu/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-68.log
