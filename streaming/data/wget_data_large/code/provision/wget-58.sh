#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2   dailymotion.com/
sleep 120
/usr/local/bin/wget --tries=2   forbes.com/
sleep 120
/usr/local/bin/wget --tries=2   imdb.com/
sleep 120
/usr/local/bin/wget --tries=2   reuters.com/
sleep 120
/usr/local/bin/wget --tries=2   github.io/
sleep 120
/usr/local/bin/wget --tries=2   webs.com/
sleep 120
/usr/local/bin/wget --tries=2   ocn.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2   cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2   kickstarter.com/
sleep 120
/usr/local/bin/wget --tries=2   newyorker.com/
sleep 120
/usr/local/bin/wget --tries=2   rakuten.co.jp/
sleep 120
/usr/local/bin/wget --tries=2   economist.com/
sleep 120
/usr/local/bin/wget --tries=2   doi.org/
sleep 120
/usr/local/bin/wget --tries=2   inc.com/
sleep 120
/usr/local/bin/wget --tries=2   jugem.jp/
sleep 120
/usr/local/bin/wget --tries=2   marketwatch.com/
sleep 120
/usr/local/bin/wget --tries=2   go.com/
sleep 120
/usr/local/bin/wget --tries=2   census.gov/
sleep 120
/usr/local/bin/wget --tries=2   cnet.com/
sleep 120
/usr/local/bin/wget --tries=2   1688.com/
sleep 120
/usr/local/bin/wget --tries=2   4.cn/
sleep 120
/usr/local/bin/wget --tries=2   tandfonline.com/
sleep 120
/usr/local/bin/wget --tries=2   forbes.com/
sleep 120
/usr/local/bin/wget --tries=2   dell.com/
sleep 120
/usr/local/bin/wget --tries=2   jimdo.com/
sleep 120
/usr/local/bin/wget --tries=2   xinhuanet.com/
sleep 120
/usr/local/bin/wget --tries=2   hp.com/
sleep 120
/usr/local/bin/wget --tries=2   android.com/
sleep 120
/usr/local/bin/wget --tries=2   evernote.com/
sleep 120
/usr/local/bin/wget --tries=2   dropboxusercontent.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-58.log
