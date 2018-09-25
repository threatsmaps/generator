#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-dns-cache namebright.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache economist.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache addtoany.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache t.co/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache indiatimes.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cloudflare.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache vice.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache vimeo.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache independent.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache ow.ly/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache drupal.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache goo.gl/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache cpanel.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache windowsphone.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache variety.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache buydomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache accuweather.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache example.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache aboutcookies.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache telegraph.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache att.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache creativecommons.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache storify.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache disqus.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache smugmug.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache namebright.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache inc.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache change.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache livedoor.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-dns-cache detik.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-62.log
