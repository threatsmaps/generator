#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -v mashable.com/
sleep 120
/usr/local/bin/wget --tries=2 -v tandfonline.com/
sleep 120
/usr/local/bin/wget --tries=2 -v networkadvertising.org/
sleep 120
/usr/local/bin/wget --tries=2 -v squarespace.com/
sleep 120
/usr/local/bin/wget --tries=2 -v utexas.edu/
sleep 120
/usr/local/bin/wget --tries=2 -v amazonaws.com/
sleep 120
/usr/local/bin/wget --tries=2 -v businessinsider.com/
sleep 120
/usr/local/bin/wget --tries=2 -v shareasale.com/
sleep 120
/usr/local/bin/wget --tries=2 -v imdb.com/
sleep 120
/usr/local/bin/wget --tries=2 -v eventbrite.com/
sleep 120
/usr/local/bin/wget --tries=2 -v weebly.com/
sleep 120
/usr/local/bin/wget --tries=2 -v exblog.jp/
sleep 120
/usr/local/bin/wget --tries=2 -v stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 -v reddit.com/
sleep 120
/usr/local/bin/wget --tries=2 -v domeneshop.no/
sleep 120
/usr/local/bin/wget --tries=2 -v globo.com/
sleep 120
/usr/local/bin/wget --tries=2 -v time.com/
sleep 120
/usr/local/bin/wget --tries=2 -v aboutads.info/
sleep 120
/usr/local/bin/wget --tries=2 -v prestashop.com/
sleep 120
/usr/local/bin/wget --tries=2 -v walmart.com/
sleep 120
/usr/local/bin/wget --tries=2 -v seesaa.net/
sleep 120
/usr/local/bin/wget --tries=2 -v usatoday.com/
sleep 120
/usr/local/bin/wget --tries=2 -v foursquare.com/
sleep 120
/usr/local/bin/wget --tries=2 -v businessinsider.com/
sleep 120
/usr/local/bin/wget --tries=2 -v livejournal.com/
sleep 120
/usr/local/bin/wget --tries=2 -v forbes.com/
sleep 120
/usr/local/bin/wget --tries=2 -v hhs.gov/
sleep 120
/usr/local/bin/wget --tries=2 -v umich.edu/
sleep 120
/usr/local/bin/wget --tries=2 -v theatlantic.com/
sleep 120
/usr/local/bin/wget --tries=2 -v teamviewer.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-61.log
