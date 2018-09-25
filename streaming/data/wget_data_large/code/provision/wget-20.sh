#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --ignore-length mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length redcross.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length jdoqocy.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length studiopress.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length marketwatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length wikia.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length guardian.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length wordpress.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ebay.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length etsy.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length imdb.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length shareasale.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length imgur.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length opensource.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length psu.edu/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length fbcdn.net/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length t.co/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length booking.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length hbr.org/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length bandcamp.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length irs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length princeton.edu/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length uk2.net/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length t.co/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length meetup.com/
sleep 120
/usr/local/bin/wget --tries=2 --ignore-length aboutads.info/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-20.log
