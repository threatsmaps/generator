#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --show-progress bloomberg.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress wp.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress cbslocal.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress huffingtonpost.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress marketwatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress whitehouse.gov/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress discuz.net/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress springer.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress domainnameshop.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress blogspot.ca/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress marriott.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress umich.edu/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress meetup.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress staticflickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress aol.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress cryoutcreations.eu/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress 51.la/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress behance.net/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress opensource.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress creativecommons.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress xiti.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress cloudflare.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress buydomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress joomla.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress elegantthemes.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress myshopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress nasa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress sogou.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress sciencedaily.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-72.log
