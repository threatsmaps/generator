#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --save-headers wikipedia.org/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers constantcontact.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers discuz.net/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers google.de/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers cdbaby.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers list-manage1.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers fc2.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers mit.edu/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers whoisprivacyprotect.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers independent.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers gofundme.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers oxfordjournals.org/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers pinterest.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers researchgate.net/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers livejournal.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers googleusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers theatlantic.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers dribbble.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers alexa.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers constantcontact.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers blogspot.com.es/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers livejournal.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers cbc.ca/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers cbslocal.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers entrepreneur.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers whitehouse.gov/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers paypal.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers facebook.com/
sleep 120
/usr/local/bin/wget --tries=2 --save-headers wisc.edu/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-84.log
