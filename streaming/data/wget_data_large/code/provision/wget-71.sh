#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-dns-cache globo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache sogou.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache whoisprivacyprotect.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache adweek.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache mijndomein.nl/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache feedburner.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache usgs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cdbaby.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache who.int/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache wordpress.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache about.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache businessinsider.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache imdb.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache gnu.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ed.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache domainnameshop.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache domainnameshop.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache tripadvisor.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache rt.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache constantcontact.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache nifty.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache forbes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache debian.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache att.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache jdoqocy.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache list-manage2.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache dropbox.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache odnoklassniki.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache economist.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-71.log
