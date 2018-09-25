#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --auth-no-challenge cmu.edu/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge inc.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge hp.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge detik.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge sohu.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge tinyurl.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge bigcartel.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge themegrill.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge myshopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge opera.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge house.gov/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge sagepub.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge beian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge odnoklassniki.ru/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge blogger.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge wikimedia.org/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge google.nl/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge variety.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge php.net/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge researchgate.net/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge harvard.edu/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge go.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge godaddy.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge harvard.edu/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge athemes.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge who.int/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge typepad.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge live.com/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge abc.net.au/
sleep 120
/usr/local/bin/wget --tries=2 --auth-no-challenge sciencedaily.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-56.log
