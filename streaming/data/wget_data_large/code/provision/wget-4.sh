#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -V ewebdevelopment.com/
sleep 120
/usr/local/bin/wget --tries=2 -V zendesk.com/
sleep 120
/usr/local/bin/wget --tries=2 -V ibm.com/
sleep 120
/usr/local/bin/wget --tries=2 -V independent.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V cam.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V nps.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 -V duke.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V e-recht24.de/
sleep 120
/usr/local/bin/wget --tries=2 -V mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 -V cmu.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V va.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V livestream.com/
sleep 120
/usr/local/bin/wget --tries=2 -V columbia.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V samsung.com/
sleep 120
/usr/local/bin/wget --tries=2 -V shinystat.com/
sleep 120
/usr/local/bin/wget --tries=2 -V theverge.com/
sleep 120
/usr/local/bin/wget --tries=2 -V uol.com.br/
sleep 120
/usr/local/bin/wget --tries=2 -V tumblr.com/
sleep 120
/usr/local/bin/wget --tries=2 -V gofundme.com/
sleep 120
/usr/local/bin/wget --tries=2 -V goodreads.com/
sleep 120
/usr/local/bin/wget --tries=2 -V shopify.com/
sleep 120
/usr/local/bin/wget --tries=2 -V aliyun.com/
sleep 120
/usr/local/bin/wget --tries=2 -V t.co/
sleep 120
/usr/local/bin/wget --tries=2 -V bola.net/
sleep 120
/usr/local/bin/wget --tries=2 -V ieee.org/
sleep 120
/usr/local/bin/wget --tries=2 -V aboutads.info/
sleep 120
/usr/local/bin/wget --tries=2 -V sciencemag.org/
sleep 120
/usr/local/bin/wget --tries=2 -V geocities.com/
sleep 120
/usr/local/bin/wget --tries=2 -V themeforest.net/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-4.log
