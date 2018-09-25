#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --no-use-server-timestamps studiopress.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps issuu.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps 1and1.fr/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps eventbrite.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps duke.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps att.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps one.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps irs.gov/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps opera.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps t.co/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps berkeley.edu/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps facebook.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps archive.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps bbb.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps trustpilot.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ifeng.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps engadget.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps typepad.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps gnu.org/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps wordpress.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps mlb.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps free.fr/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps ameblo.jp/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps gov.uk/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps presscustomizr.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps webs.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps wordpress.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps slideshare.net/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps bmj.com/
sleep 120
/usr/local/bin/wget --tries=2 --no-use-server-timestamps abc.net.au/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-69.log
