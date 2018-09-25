#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --follow-ftp joomla.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp list-manage2.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp unesco.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp dribbble.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp politico.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp nginx.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp businesswire.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp uk2.net/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp europa.eu/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ca.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp wordpress.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp wiley.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp tandfonline.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp si.edu/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp msn.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp techcrunch.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp umd.edu/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp mail.ru/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp google.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp google.de/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp trustpilot.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp flickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp github.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp adweek.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp fb.me/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp networksolutions.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp umich.edu/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-96.log
