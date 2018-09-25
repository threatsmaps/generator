#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --auth-no-challenge latimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge delicious.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge kickstarter.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge msn.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge pinterest.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge ed.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge istockphoto.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge theatlantic.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge cdc.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge goodreads.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge debian.org/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge line.me/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge archives.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge eventbrite.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge namebright.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge cbsnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge state.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge ca.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge sciencemag.org/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge themeforest.net/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge nps.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge blogspot.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge wordpress.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge abc.net.au/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge staticflickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge nyu.edu/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge vk.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge delicious.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge xing.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge squarespace.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-85.log
