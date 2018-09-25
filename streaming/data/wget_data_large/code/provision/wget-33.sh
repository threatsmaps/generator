#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -N pinterest.com/
sleep 120
/usr/local/bin/wget --tries=2 -N bit.ly/
sleep 120
/usr/local/bin/wget --tries=2 -N aboutads.info/
sleep 120
/usr/local/bin/wget --tries=2 -N adobe.com/
sleep 120
/usr/local/bin/wget --tries=2 -N yahoo.com/
sleep 120
/usr/local/bin/wget --tries=2 -N vk.com/
sleep 120
/usr/local/bin/wget --tries=2 -N linkedin.com/
sleep 120
/usr/local/bin/wget --tries=2 -N slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2 -N worldbank.org/
sleep 120
/usr/local/bin/wget --tries=2 -N census.gov/
sleep 120
/usr/local/bin/wget --tries=2 -N bestfwdservice.com/
sleep 120
/usr/local/bin/wget --tries=2 -N liveinternet.ru/
sleep 120
/usr/local/bin/wget --tries=2 -N springer.com/
sleep 120
/usr/local/bin/wget --tries=2 -N livestream.com/
sleep 120
/usr/local/bin/wget --tries=2 -N theatlantic.com/
sleep 120
/usr/local/bin/wget --tries=2 -N ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 -N lifehacker.com/
sleep 120
/usr/local/bin/wget --tries=2 -N dailymotion.com/
sleep 120
/usr/local/bin/wget --tries=2 -N utexas.edu/
sleep 120
/usr/local/bin/wget --tries=2 -N barnesandnoble.com/
sleep 120
/usr/local/bin/wget --tries=2 -N campaign-archive2.com/
sleep 120
/usr/local/bin/wget --tries=2 -N rt.com/
sleep 120
/usr/local/bin/wget --tries=2 -N bizjournals.com/
sleep 120
/usr/local/bin/wget --tries=2 -N zendesk.com/
sleep 120
/usr/local/bin/wget --tries=2 -N dot.gov/
sleep 120
/usr/local/bin/wget --tries=2 -N jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 -N hhs.gov/
sleep 120
/usr/local/bin/wget --tries=2 -N telegraph.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -N macromedia.com/
sleep 120
/usr/local/bin/wget --tries=2 -N myshopify.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-33.log
