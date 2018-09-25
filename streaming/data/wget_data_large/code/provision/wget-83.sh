#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies youtube.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.co.in/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies usgs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies irs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies myspace.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies cloudfront.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies wiley.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.co.in/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies noaa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies alibaba.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hp.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies archives.gov/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies businessinsider.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nytimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies typepad.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies box.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies behance.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies yale.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies att.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies engadget.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies bloomberg.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies newyorker.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nydailynews.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies umich.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies youku.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies sfgate.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hostgator.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-83.log
