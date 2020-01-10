#!/bin/bash

file1="./test_file1"
file2="./test_file2"

#Check if a file already exisit:
if [ -e $file1 ]; then
	echo "$file1 already exists"
else
	echo "$file1 doesn't exist, please create it"
fi

# -e file exist
# -f is a normal file
# -r file is readable
# -w file is writeable
# -x file is executable
# -d file is a directory
# -p file is a pipe
# -L file is a symbolic link
# -G file is owned by the group
# -O file is owned by the userid
# -S file is a network socket
