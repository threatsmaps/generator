print """
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
This python file generates wget files for normally-behaved wget training data generation.    			+
Each file should have 1 wget operations with random addresses. 											+
To mimic exploit pattern, several files have -N flag and same address.  								+
+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
"""

import csv
from random import randint

# List of most popular websites
data = open("top500.csv", 'r')
csv = csv.DictReader(data)

websites = []
for row in csv:
	websites.append(row['URL'])
data.close()

flags = [' ', '-N', '-V', '-o /dev/null', '-q', '-v', '-nv', '--show-progress', '--no-use-server-timestamps', '--no-dns-cache', '--no-cookies', '--keep-session-cookies', '--ignore-length', '--save-headers', '--content-on-error', '--auth-no-challenge', '--no-check-certificate', '--follow-ftp', '--strict-comments']

# 100 wget files with various flags and possibly different websites
for i in range(100):
	filename = "wget-" + str(i) + ".sh"
	output = open(filename, 'wb')
	output.write("#!/bin/bash\n")
	output.write("rm -f /home/vagrant/index.html.*\n")
	output.write("rm -f /home/vagrant/index.html\n")
	output.write("sudo camflow -a true\n")
	flag = flags[randint(0, len(flags) - 1)]
	for n in range(30):
		website = websites[randint(0, len(websites) - 1)]
		wget_str = "/usr/local/bin/wget --tries=2 " + flag + " " + website + "\n"
		output.write(wget_str)
		output.write("sleep 120\n")
	output.write("sudo camflow -a false\n")
	# output.write("sudo camflow -e false\n")
	output.write("sleep 30\n")
	copy_data = "cp /tmp/audit.log /vagrant/data/wget-normal-" + str(i) + ".log\n"
	output.write(copy_data)
	output.close()

# # 20 wget files with same website and flag `-N`
# for i in range(20):
# 	seq = 80 + i
# 	filename = "wget-" + str(seq) + ".sh"
# 	output = open(filename, 'wb')
# 	output.write("#!/bin/bash\n")
# 	website = websites[randint(0, len(websites) - 1)]
# 	for n in range(1):
# 		wget_str = "/usr/local/bin/wget -N --tries=5 " + website + " || echo 'Fail: " + str(n) + " in experiment " + str(i) + "'\n"
# 		output.write(wget_str)
# 	output.close()
