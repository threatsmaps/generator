#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -o /dev/null techcrunch.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null tripod.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null myspace.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null columbia.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null scribd.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null google.ca/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null wp.me/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null archive.org/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null loc.gov/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null technorati.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null loopia.se/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null addtoany.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null alexa.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null slate.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null shopify.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null livejournal.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null wikia.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null mijndomein.nl/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null example.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null slate.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null ameblo.jp/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null adobe.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null ftc.gov/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null umd.edu/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null dailymail.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null smugmug.com/
sleep 120
/usr/local/bin/wget --tries=2 -o /dev/null phoca.cz/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-39.log
