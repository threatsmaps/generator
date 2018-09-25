#!/bin/bash
rm -f /home/vagrant/index.html.*
rm -f /home/vagrant/index.html
sudo camflow -a true
/usr/local/bin/wget --tries=2 --strict-comments google.ca/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments theatlantic.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments ascii.co.uk/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments enable-javascript.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments marketwatch.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments mysql.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments networksolutions.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments icio.us/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments mailchimp.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments microsoft.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments comsenz.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments wikihow.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments cornell.edu/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments imdb.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments wp.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments sciencedaily.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments fastcompany.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments ox.ac.uk/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments staticflickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments cryoutcreations.eu/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments examiner.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments webs.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments staticflickr.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments nps.gov/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments surveymonkey.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments va.gov/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments joomla.org/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments secureserver.net/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments bing.com/
sleep 120
/usr/local/bin/wget --tries=2 --strict-comments globo.com/
sleep 120
sudo camflow -a false
sleep 30
cp /tmp/audit.log /vagrant/data/wget-normal-52.log
