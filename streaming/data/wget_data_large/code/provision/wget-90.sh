#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies bit.ly/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies com.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies latimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies blogspot.ca/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies aboutads.info/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies windowsphone.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies yale.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies epa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies amazon.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bloomberg.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies paypal.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.pl/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies instagram.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies mijndomein.nl/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies cdc.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies adweek.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies free.fr/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies worldbank.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies vk.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies behance.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hilton.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies office.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies secureserver.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies psychologytoday.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies microsoft.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hhs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies foxnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hostnet.nl/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hollywoodreporter.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-90.log
