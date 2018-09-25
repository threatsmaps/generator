#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -q ftc.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q loc.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q bbc.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -q windowsphone.com/
sleep 120
/usr/local/bin/wget --tries=2 -q amazon.fr/
sleep 120
/usr/local/bin/wget --tries=2 -q un.org/
sleep 120
/usr/local/bin/wget --tries=2 -q livestream.com/
sleep 120
/usr/local/bin/wget --tries=2 -q miibeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 -q zendesk.com/
sleep 120
/usr/local/bin/wget --tries=2 -q wired.com/
sleep 120
/usr/local/bin/wget --tries=2 -q dropcatch.com/
sleep 120
/usr/local/bin/wget --tries=2 -q reuters.com/
sleep 120
/usr/local/bin/wget --tries=2 -q deviantart.com/
sleep 120
/usr/local/bin/wget --tries=2 -q hatena.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 -q cnet.com/
sleep 120
/usr/local/bin/wget --tries=2 -q state.tx.us/
sleep 120
/usr/local/bin/wget --tries=2 -q dreamhost.com/
sleep 120
/usr/local/bin/wget --tries=2 -q irs.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q telegram.me/
sleep 120
/usr/local/bin/wget --tries=2 -q bls.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q debian.org/
sleep 120
/usr/local/bin/wget --tries=2 -q goodreads.com/
sleep 120
/usr/local/bin/wget --tries=2 -q deviantart.com/
sleep 120
/usr/local/bin/wget --tries=2 -q usgs.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q ustream.tv/
sleep 120
/usr/local/bin/wget --tries=2 -q sciencemag.org/
sleep 120
/usr/local/bin/wget --tries=2 -q amazon.de/
sleep 120
/usr/local/bin/wget --tries=2 -q va.gov/
sleep 120
/usr/local/bin/wget --tries=2 -q meetup.com/
sleep 120
/usr/local/bin/wget --tries=2 -q columbia.edu/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-92.log
