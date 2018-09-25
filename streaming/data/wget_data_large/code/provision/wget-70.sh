#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --follow-ftp t.co/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp hud.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp mozilla.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp google.nl/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp fastcompany.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp sourceforge.net/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp uol.com.br/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp yahoo.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp amazonaws.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp accuweather.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp oecd.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp mtv.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp github.io/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp box.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp businesswire.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp loopia.se/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp homestead.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp entrepreneur.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp eepurl.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp boston.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp berkeley.edu/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp livejournal.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp nature.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp fbcdn.net/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp paypal.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp change.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp businessinsider.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-70.log
