#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-dns-cache loopia.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache today.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache amazonaws.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache dell.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache doubleclick.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache wixsite.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cnet.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache spotify.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache nifty.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache office.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache psychologytoday.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache mashable.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cdc.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache noaa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache google.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache eventbrite.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache tripadvisor.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache bluehost.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache google.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache android.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache netflix.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache com.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache domainnameshop.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache biglobe.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache walmart.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-99.log
