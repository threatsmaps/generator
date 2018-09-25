#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-use-server-timestamps t.co/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ow.ly/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps icio.us/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps politico.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps myspace.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps wunderground.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ovh.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps myshopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps sina.com.cn/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps rollingstone.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps loopia.se/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps about.me/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps sourceforge.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps mijndomein.nl/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps umblr.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps doi.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps tumblr.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps google.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps uchicago.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps soundcloud.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps smh.com.au/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps go.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps psu.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ewebdevelopment.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps blogspot.com.es/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps usatoday.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps livedoor.jp/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-49.log
