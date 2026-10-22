#!/bin/bash

echo "----------Checking File System Operations"


if [ -f file.txt ]; then
	echo "file exists"
else
	echo "file not exists"
fi	

echo "--------Checking the script directory exists"

script_dir="/home/ec2-user/demo_scripts"

if [ ! -d "$script_dir" ]; then
      echo "Directory '$script_dir' not exists......"
      mkdir -p "$script_dir"
      echo "........Directory '$script_dir' created..............."
else
    echo "Directory '$script_dir' exists"
fi    

echo "checking whether file is executable or not"

file="filetest.sh"

if [ -x "$file" ]; then
    echo "file is executable"
else
	echo "Making file exec Executable"
	chmod u+x "$file"
fi	



