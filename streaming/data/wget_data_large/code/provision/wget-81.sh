#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -V google.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 -V skype.com/
sleep 120
/usr/local/bin/wget --tries=2 -V acquirethisname.com/
sleep 120
/usr/local/bin/wget --tries=2 -V ftc.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V inc.com/
sleep 120
/usr/local/bin/wget --tries=2 -V ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V nhs.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V hatena.ne.jp/
sleep 120
/usr/local/bin/wget --tries=2 -V ewebdevelopment.com/
sleep 120
/usr/local/bin/wget --tries=2 -V usc.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V wunderground.com/
sleep 120
/usr/local/bin/wget --tries=2 -V nhk.or.jp/
sleep 120
/usr/local/bin/wget --tries=2 -V hubspot.com/
sleep 120
/usr/local/bin/wget --tries=2 -V constantcontact.com/
sleep 120
/usr/local/bin/wget --tries=2 -V ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V bbc.com/
sleep 120
/usr/local/bin/wget --tries=2 -V ovh.net/
sleep 120
/usr/local/bin/wget --tries=2 -V ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V samsung.com/
sleep 120
/usr/local/bin/wget --tries=2 -V sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 -V inc.com/
sleep 120
/usr/local/bin/wget --tries=2 -V staticflickr.com/
sleep 120
/usr/local/bin/wget --tries=2 -V jiathis.com/
sleep 120
/usr/local/bin/wget --tries=2 -V mirror.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V washingtonpost.com/
sleep 120
/usr/local/bin/wget --tries=2 -V stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V nsw.gov.au/
sleep 120
/usr/local/bin/wget --tries=2 -V buzzfeed.com/
sleep 120
/usr/local/bin/wget --tries=2 -V wp.me/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-81.log
