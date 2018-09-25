#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-dns-cache ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache creativecommons.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache spotify.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache oxfordjournals.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache youronlinechoices.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache bigcartel.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache nifty.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache instagram.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache teamviewer.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache yandex.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ucla.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache campaign-archive1.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ca.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cmu.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache duke.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache wixsite.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache google.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache meetup.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ok.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache indiatimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache office.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache domainname.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache w3.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache archive.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache blogspot.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache geocities.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache indiatimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache 22.cn/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-24.log
