#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 -V ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V myspace.com/
sleep 120
/usr/local/bin/wget --tries=2 -V loopia.com/
sleep 120
/usr/local/bin/wget --tries=2 -V instagram.com/
sleep 120
/usr/local/bin/wget --tries=2 -V abc.net.au/
sleep 120
/usr/local/bin/wget --tries=2 -V e-recht24.de/
sleep 120
/usr/local/bin/wget --tries=2 -V rollingstone.com/
sleep 120
/usr/local/bin/wget --tries=2 -V bbb.org/
sleep 120
/usr/local/bin/wget --tries=2 -V smugmug.com/
sleep 120
/usr/local/bin/wget --tries=2 -V stanford.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V buzzfeed.com/
sleep 120
/usr/local/bin/wget --tries=2 -V hbr.org/
sleep 120
/usr/local/bin/wget --tries=2 -V jugem.jp/
sleep 120
/usr/local/bin/wget --tries=2 -V ewebdevelopment.com/
sleep 120
/usr/local/bin/wget --tries=2 -V ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V mirror.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V opera.com/
sleep 120
/usr/local/bin/wget --tries=2 -V duke.edu/
sleep 120
/usr/local/bin/wget --tries=2 -V archives.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V amazon.de/
sleep 120
/usr/local/bin/wget --tries=2 -V cnn.com/
sleep 120
/usr/local/bin/wget --tries=2 -V geocities.jp/
sleep 120
/usr/local/bin/wget --tries=2 -V latimes.com/
sleep 120
/usr/local/bin/wget --tries=2 -V change.org/
sleep 120
/usr/local/bin/wget --tries=2 -V whitehouse.gov/
sleep 120
/usr/local/bin/wget --tries=2 -V amazon.co.jp/
sleep 120
/usr/local/bin/wget --tries=2 -V buzzfeed.com/
sleep 120
/usr/local/bin/wget --tries=2 -V cam.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 -V mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 -V ovh.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-51.log
