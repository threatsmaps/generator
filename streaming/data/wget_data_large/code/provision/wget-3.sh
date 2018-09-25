#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -N bit.ly/
sleep 120
/usr/local/bin/wget --tries=2 -N ocn.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 -N yahoo.com/
sleep 120
/usr/local/bin/wget --tries=2 -N politico.com/
sleep 120
/usr/local/bin/wget --tries=2 -N symantec.com/
sleep 120
/usr/local/bin/wget --tries=2 -N yelp.com/
sleep 120
/usr/local/bin/wget --tries=2 -N upenn.edu/
sleep 120
/usr/local/bin/wget --tries=2 -N businessinsider.com/
sleep 120
/usr/local/bin/wget --tries=2 -N storify.com/
sleep 120
/usr/local/bin/wget --tries=2 -N soundcloud.com/
sleep 120
/usr/local/bin/wget --tries=2 -N bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 -N reddit.com/
sleep 120
/usr/local/bin/wget --tries=2 -N cornell.edu/
sleep 120
/usr/local/bin/wget --tries=2 -N apple.com/
sleep 120
/usr/local/bin/wget --tries=2 -N free.fr/
sleep 120
/usr/local/bin/wget --tries=2 -N elegantthemes.com/
sleep 120
/usr/local/bin/wget --tries=2 -N soundcloud.com/
sleep 120
/usr/local/bin/wget --tries=2 -N disqus.com/
sleep 120
/usr/local/bin/wget --tries=2 -N reuters.com/
sleep 120
/usr/local/bin/wget --tries=2 -N ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 -N mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 -N shinystat.com/
sleep 120
/usr/local/bin/wget --tries=2 -N bestfwdservice.com/
sleep 120
/usr/local/bin/wget --tries=2 -N target.com/
sleep 120
/usr/local/bin/wget --tries=2 -N goo.gl/
sleep 120
/usr/local/bin/wget --tries=2 -N umn.edu/
sleep 120
/usr/local/bin/wget --tries=2 -N yale.edu/
sleep 120
/usr/local/bin/wget --tries=2 -N marriott.com/
sleep 120
/usr/local/bin/wget --tries=2 -N youtube.com/
sleep 120
/usr/local/bin/wget --tries=2 -N amzn.to/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-3.log
