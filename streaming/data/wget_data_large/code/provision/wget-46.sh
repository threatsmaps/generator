#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --content-on-error blogspot.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error networkadvertising.org/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error apache.org/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error nps.gov/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error gov.uk/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error tucowsdomains.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error bigcartel.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error hp.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error bola.net/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error rt.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error cbsnews.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error sfgate.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error about.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error gizmodo.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error att.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error cnet.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error evernote.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error entrepreneur.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error loopia.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error fastcompany.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error weebly.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error naver.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error ed.gov/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error washingtonpost.com/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error cdc.gov/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error nazwa.pl/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error uol.com.br/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error openstreetmap.org/
sleep 120
/usr/local/bin/wget --tries=2 --content-on-error xiti.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-46.log
