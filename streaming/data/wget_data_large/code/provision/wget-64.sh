#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -V bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 -V nhk.or.jp/
sleep 120
/usr/local/bin/wget --tries=2 -V nhk.or.jp/
sleep 120
/usr/local/bin/wget --tries=2 -V webs.com/
sleep 120
/usr/local/bin/wget --tries=2 -V istockphoto.com/
sleep 120
/usr/local/bin/wget --tries=2 -V windowsphone.com/
sleep 120
/usr/local/bin/wget --tries=2 -V 360.cn/
sleep 120
/usr/local/bin/wget --tries=2 -V googleusercontent.com/
sleep 120
/usr/local/bin/wget --tries=2 -V washingtonpost.com/
sleep 120
/usr/local/bin/wget --tries=2 -V kickstarter.com/
sleep 120
/usr/local/bin/wget --tries=2 -V hostnet.nl/
sleep 120
/usr/local/bin/wget --tries=2 -V census.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V mail.ru/
sleep 120
/usr/local/bin/wget --tries=2 -V upenn.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V amazon.fr/
sleep 120
/usr/local/bin/wget --tries=2 -V irs.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V domainactive.co/
sleep 120
/usr/local/bin/wget --tries=2 -V fb.com/
sleep 120
/usr/local/bin/wget --tries=2 -V utexas.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V sohu.com/
sleep 120
/usr/local/bin/wget --tries=2 -V oxfordjournals.org/
sleep 120
/usr/local/bin/wget --tries=2 -V reddit.com/
sleep 120
/usr/local/bin/wget --tries=2 -V wix.com/
sleep 120
/usr/local/bin/wget --tries=2 -V disqus.com/
sleep 120
/usr/local/bin/wget --tries=2 -V google.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V t-online.de/
sleep 120
/usr/local/bin/wget --tries=2 -V dailymail.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V gravatar.com/
sleep 120
/usr/local/bin/wget --tries=2 -V blogspot.de/
sleep 120
/usr/local/bin/wget --tries=2 -V gnu.org/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-64.log
