#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --content-on-error alexa.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error foursquare.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error mashable.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error fotolia.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error hp.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error fb.me/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error psu.edu/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error fotolia.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error eventbrite.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error blogger.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error geocities.jp/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error intel.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error nydailynews.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error wikihow.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error constantcontact.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error usnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error wordpress.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error liveinternet.ru/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error sourceforge.net/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error army.mil/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error constantcontact.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error jdoqocy.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error xing.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error yelp.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error tripadvisor.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error 163.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error namejet.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error gnu.org/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-94.log
