#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nazwa.pl/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hibu.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies sciencemag.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies amazon.de/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies godaddy.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies sourceforge.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies sedo.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies umblr.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies addtoany.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies noaa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies live.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nytimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies buzzfeed.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies loopia.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies telegram.me/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies jugem.jp/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies mozilla.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies fortune.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nydailynews.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hostnet.nl/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies alibaba.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies blogspot.ca/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies today.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies namebright.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-13.log
