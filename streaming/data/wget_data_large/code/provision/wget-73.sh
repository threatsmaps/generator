#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --keep-session-cookies cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies github.io/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies amazon.de/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies sciencemag.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies livestream.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies worldbank.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies dropcatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies webmd.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies discuz.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies debian.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies umd.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies amazon.de/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies oup.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies cloudfront.net/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies shareasale.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies linksynergy.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies change.org/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies tucowsdomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies nydailynews.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies google.es/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies tumblr.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies hatena.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies skype.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies mit.edu/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies boston.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies yahoo.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies medium.com/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies about.me/
sleep 120
/usr/local/bin/wget --tries=2 --keep-session-cookies clickbank.net/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-73.log
