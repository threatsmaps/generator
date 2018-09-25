#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --show-progress ebay.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress taobao.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress opensource.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress spiegel.de/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress redcross.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress bbc.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress domainactive.co/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress nypost.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress msn.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress change.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress marketwatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress dropcatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress myshopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress umd.edu/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress yandex.ru/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress taobao.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress domeneshop.no/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress nhk.or.jp/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress bizjournals.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress shareasale.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress dell.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress hostgator.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress eventbrite.com/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress nazwa.pl/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress ebay.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress domainactive.co/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress biglobe.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress creativecommons.org/
sleep 120
/usr/local/bin/wget --tries=2 --show-progress prnewswire.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-21.log
