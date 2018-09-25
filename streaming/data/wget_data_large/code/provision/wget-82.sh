#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --auth-no-challenge gizmodo.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge ow.ly/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge sciencedirect.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge ovh.net/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge wiley.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge facebook.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge accuweather.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge nydailynews.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge vk.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge who.int/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge register.it/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge google.es/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge noaa.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge usc.edu/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge meetup.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge yelp.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge admin.ch/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge nifty.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge cloudflare.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge blogspot.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge barnesandnoble.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge ed.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge ewebdevelopment.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge vkontakte.ru/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge vimeo.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge themegrill.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge nih.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge teamviewer.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-82.log
