#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --strict-comments 1and1.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments geocities.jp/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments un.org/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments aboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments telegraph.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments chicagotribune.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments shareasale.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments google.com.br/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments wikimedia.org/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments sohu.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments live.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments hubspot.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments mozilla.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments hilton.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments gnu.org/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments wikipedia.org/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments blogspot.jp/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments aboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments foursquare.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments goodreads.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments bizjournals.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments yahoo.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments walmart.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments seesaa.net/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments gofundme.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments fbcdn.net/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments bit.ly/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments ebay.co.uk/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-89.log
