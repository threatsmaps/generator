#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --content-on-error office.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error etsy.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error rt.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error studiopress.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error cnbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error europa.eu/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error tumblr.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error ieee.org/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error photobucket.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error rollingstone.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error jimdo.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error trustpilot.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error box.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error feedburner.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error nydailynews.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error w3.org/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error phoca.cz/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error slate.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error loopia.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error google.es/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error si.edu/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error loopia.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error creativecommons.org/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error comsenz.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-40.log
