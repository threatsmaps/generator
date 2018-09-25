#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -o /dev/null wix.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null latimes.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null dribbble.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null sciencemag.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null doubleclick.net/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null cam.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null nginx.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null athemes.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null cdbaby.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null domainnameshop.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null blogspot.fr/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null vk.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null fc2.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null symantec.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null feedly.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null elegantthemes.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null tumblr.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null livedoor.jp/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null jugem.jp/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null istockphoto.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null nhs.uk/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null eventbrite.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null change.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null acquirethisname.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null themegrill.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null google.pl/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null geocities.jp/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-93.log
