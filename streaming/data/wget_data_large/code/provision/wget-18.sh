#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -nv pbs.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv campaign-archive1.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv entrepreneur.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv wiley.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv rollingstone.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv nginx.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv google.co.in/
sleep 120
/usr/local/bin/wget --tries=2 -nv icann.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv acquirethisname.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv shinystat.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv google.com.br/
sleep 120
/usr/local/bin/wget --tries=2 -nv senate.gov/
sleep 120
/usr/local/bin/wget --tries=2 -nv irs.gov/
sleep 120
/usr/local/bin/wget --tries=2 -nv bluehost.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv wisc.edu/
sleep 120
/usr/local/bin/wget --tries=2 -nv liveinternet.ru/
sleep 120
/usr/local/bin/wget --tries=2 -nv youtube.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv shinystat.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv fc2.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv hud.gov/
sleep 120
/usr/local/bin/wget --tries=2 -nv independent.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -nv wunderground.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv qq.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv xing.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv goo.gl/
sleep 120
/usr/local/bin/wget --tries=2 -nv spotify.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv cisco.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv surveymonkey.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv ed.gov/
sleep 120
/usr/local/bin/wget --tries=2 -nv nifty.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-18.log
