#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --follow-ftp joomla.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp state.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp goodreads.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp amazon.de/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp dell.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp upenn.edu/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp reuters.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp wikimedia.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp today.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp reuters.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp athemes.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp dell.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp google.com.br/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp odnoklassniki.ru/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp odnoklassniki.ru/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp safedog.cn/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp scribd.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp loopia.se/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp odnoklassniki.ru/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp nih.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp medium.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp smh.com.au/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp blogspot.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ap.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp forbes.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp seesaa.net/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp feedburner.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-34.log
