#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -nv cloudflare.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv springer.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv godaddy.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv ovh.net/
sleep 120
/usr/local/bin/wget --tries=2 -nv ucla.edu/
sleep 120
/usr/local/bin/wget --tries=2 -nv nifty.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv cbc.ca/
sleep 120
/usr/local/bin/wget --tries=2 -nv wikia.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv archive.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv wp.me/
sleep 120
/usr/local/bin/wget --tries=2 -nv directdomains.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv livejournal.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -nv stumbleupon.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv hostnet.nl/
sleep 120
/usr/local/bin/wget --tries=2 -nv oxfordjournals.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv opensource.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv globo.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv fotolia.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv umblr.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv wufoo.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv nytimes.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv samsung.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv gnu.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv amzn.to/
sleep 120
/usr/local/bin/wget --tries=2 -nv marketwatch.com/
sleep 120
/usr/local/bin/wget --tries=2 -nv npr.org/
sleep 120
/usr/local/bin/wget --tries=2 -nv blogspot.jp/
sleep 120
/usr/local/bin/wget --tries=2 -nv github.io/
sleep 120
/usr/local/bin/wget --tries=2 -nv washingtonpost.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-6.log
