#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-check-certificate wordpress.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cloudflare.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate gnu.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate oecd.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate who.int/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate e-recht24.de/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cloudfront.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate apache.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate windowsphone.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate symantec.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate mirror.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate usatoday.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate theatlantic.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate miitbeian.gov.cn/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate cdc.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate nazwa.pl/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate bluehost.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate 123-reg.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate google.ru/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate un.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate change.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate house.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate bluehost.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate nps.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate shopify.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-check-certificate android.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-91.log
