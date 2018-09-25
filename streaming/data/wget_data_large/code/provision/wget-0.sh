#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --show-progress googleusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress nhk.or.jp/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress a8.net/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress technorati.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress networkadvertising.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress hud.gov/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress home.pl/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress google.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress domainname.de/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress engadget.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress rollingstone.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress list-manage2.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress drupal.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress marriott.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress barnesandnoble.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress studiopress.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress spotify.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress tinyurl.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress ca.gov/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress theverge.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress bigcartel.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress blogspot.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress delicious.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress businessinsider.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress delicious.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress springer.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-0.log
