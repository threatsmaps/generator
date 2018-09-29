import os, sys

def line_count(f):
	for i, l in enumerate(f):
		pass
	return i + 1

if __name__ == "__main__":
	if (len(sys.argv) < 2):
		print("""
			Usage: python stats.py <input_directory>""")
		sys.exit(1)
	
	total_count = 0
	files_to_stat = os.listdir(sys.argv[1])
	print "Total number of files: " + str(len(files_to_stat))
	for input_file in files_to_stat:
		with open(os.path.join(sys.argv[1], input_file), 'r') as f:
			total_count += line_count(f)

	print str(total_count)	
