#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -nv fortune.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv hhs.gov/
sleep 120
/usr/local/bin/wget --tries=2 -nv yelp.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv vice.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv latimes.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv dailymail.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -nv yelp.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv marriott.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv acquirethisname.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv hhs.gov/
sleep 120
/usr/local/bin/wget --tries=2 -nv stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv parallels.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv delicious.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 -nv livejournal.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv theguardian.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv tinyurl.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2 -nv un.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv abc.net.au/
sleep 120
/usr/local/bin/wget --tries=2 -nv networkadvertising.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv domainnameshop.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv t.co/
sleep 120
/usr/local/bin/wget --tries=2 -nv cafepress.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv ca.gov/
sleep 120
/usr/local/bin/wget --tries=2 -nv umd.edu/
sleep 120
/usr/local/bin/wget --tries=2 -nv wunderground.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv worldbank.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv sciencemag.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv wixsite.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-95.log
