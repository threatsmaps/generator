#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -o /dev/null comsenz.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null fda.gov/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null smh.com.au/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null adweek.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null ieee.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null networkadvertising.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null princeton.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null yale.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null wixsite.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null nps.gov/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null ibm.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null dailymotion.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null aboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null latimes.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null googleusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null umn.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null liveinternet.ru/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null 51.la/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null blogspot.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null bbc.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null apache.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null sakura.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null nasa.gov/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null nih.gov/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null gizmodo.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null yale.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null deviantart.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null europa.eu/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-75.log
