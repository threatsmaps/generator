#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-dns-cache newyorker.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache hbr.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache tripod.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache blogspot.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache usda.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache independent.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache oracle.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache wunderground.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache apple.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache rakuten.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache prweb.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache europa.eu/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache sakura.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache weather.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache exblog.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache github.io/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ed.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache example.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache hatena.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache amazon.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache usda.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache dropcatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache gravatar.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache mtv.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache usa.gov/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-79.log
