#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-use-server-timestamps tmall.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps google.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps windowsphone.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps houzz.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps arstechnica.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps sohu.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps hilton.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps geocities.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps home.pl/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps pinterest.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps clickbank.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps e-recht24.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps e-recht24.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps soundcloud.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps whitehouse.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps oup.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps utexas.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps researchgate.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps fb.me/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps histats.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps time.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps rollingstone.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps staticflickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ebay.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps tmall.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps today.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps eventbrite.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-87.log
