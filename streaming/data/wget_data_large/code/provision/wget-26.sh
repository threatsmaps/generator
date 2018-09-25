#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2   exblog.jp/
sleep 120
/usr/local/bin/wget --tries=2   politico.com/
sleep 120
/usr/local/bin/wget --tries=2   weather.com/
sleep 120
/usr/local/bin/wget --tries=2   ap.org/
sleep 120
/usr/local/bin/wget --tries=2   techcrunch.com/
sleep 120
/usr/local/bin/wget --tries=2   domainactive.co/
sleep 120
/usr/local/bin/wget --tries=2   safedog.cn/
sleep 120
/usr/local/bin/wget --tries=2   gnu.org/
sleep 120
/usr/local/bin/wget --tries=2   themeforest.net/
sleep 120
/usr/local/bin/wget --tries=2   ft.com/
sleep 120
/usr/local/bin/wget --tries=2   linkedin.com/
sleep 120
/usr/local/bin/wget --tries=2   si.edu/
sleep 120
/usr/local/bin/wget --tries=2   techcrunch.com/
sleep 120
/usr/local/bin/wget --tries=2   prnewswire.com/
sleep 120
/usr/local/bin/wget --tries=2   e-recht24.de/
sleep 120
/usr/local/bin/wget --tries=2   tmall.com/
sleep 120
/usr/local/bin/wget --tries=2   123-reg.co.uk/
sleep 120
/usr/local/bin/wget --tries=2   usnews.com/
sleep 120
/usr/local/bin/wget --tries=2   sakura.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2   blogger.com/
sleep 120
/usr/local/bin/wget --tries=2   mapquest.com/
sleep 120
/usr/local/bin/wget --tries=2   slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2   amazon.fr/
sleep 120
/usr/local/bin/wget --tries=2   acquirethisname.com/
sleep 120
/usr/local/bin/wget --tries=2   tripadvisor.co.uk/
sleep 120
/usr/local/bin/wget --tries=2   uk2.net/
sleep 120
/usr/local/bin/wget --tries=2   cdbaby.com/
sleep 120
/usr/local/bin/wget --tries=2   jugem.jp/
sleep 120
/usr/local/bin/wget --tries=2   umd.edu/
sleep 120
/usr/local/bin/wget --tries=2   22.cn/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-26.log
