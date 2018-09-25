#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-cookies independent.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies staticflickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies vk.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies nbcnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies senate.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies twitch.tv/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies home.pl/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies register.it/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies 4.cn/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies oxfordjournals.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies github.io/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies safedog.cn/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies utexas.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies android.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies amazon.fr/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies scribd.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies github.io/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies time.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies uol.com.br/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies wordpress.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies mozilla.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies forbes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies wordpress.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies xiti.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies joomla.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies godaddy.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies census.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-cookies fortune.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-74.log
