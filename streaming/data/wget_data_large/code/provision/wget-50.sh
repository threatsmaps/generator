#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-use-server-timestamps hilton.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ovh.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps alexa.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps upenn.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps abc.net.au/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps facebook.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps hp.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps dailymotion.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps parallels.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps buydomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps google.com.au/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps gov.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps rambler.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps example.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps nifty.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps usda.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps cornell.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps theatlantic.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps bbb.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps examiner.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps princeton.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps myspace.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps qq.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps netflix.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps t-online.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps opera.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps gofundme.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps stackoverflow.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-50.log
