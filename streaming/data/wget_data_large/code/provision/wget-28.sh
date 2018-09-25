#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -o /dev/null jimdo.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null one.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null abc.net.au/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null technorati.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null wikimedia.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null nbcnews.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null mashable.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null admin.ch/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null youronlinechoices.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null nsw.gov.au/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null adobe.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null ft.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null redcross.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null presscustomizr.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null apple.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null loopia.se/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null foxnews.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null networkadvertising.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null nyu.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null rollingstone.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null aol.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null wikipedia.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null medium.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null usa.gov/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null namebright.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null google.com.au/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null ovh.net/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null vk.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-28.log
