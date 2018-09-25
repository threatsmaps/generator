#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --follow-ftp usatoday.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp istockphoto.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp rambler.ru/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp tripod.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp about.me/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp example.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp sourceforge.net/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp bls.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp wordpress.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp biglobe.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ameblo.jp/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp debian.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp cnn.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp wiley.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp microsoft.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp telegram.me/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp stackoverflow.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp cafepress.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp gnu.org/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ok.ru/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp walmart.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp tripod.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp namejet.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp fb.me/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp alibaba.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp usgs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp amazon.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp ibm.com/
sleep 120
/usr/local/bin/wget --tries=2 --follow-ftp abc.net.au/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-23.log
