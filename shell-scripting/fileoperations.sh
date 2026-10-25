#!/bin/bash

echo "File Operations-------"

# data="$(cat arrays.sh)"
# echo "Reading data inside the file: $data"

# Reading Line by line
while IFS= read -r line; do
	echo "Line: $line"
done < arrays.sh


readarray -t lines < file2.txt
echo "${lines[@]}"

echo "------ Writing files----------------------------------"


echo "I am Vishnu Sai > data.txt"

echo "I am a DevOps Engineer >> data.txt"

cat > opt.txt << 'EOF'
I am Vishnu Sai
Age is 29
Working as developer TCS
EOF


echo "Files test operations-----------------------"

file="opt.txt"

if [ -e "$file" ]; then
	echo "The : $file exists"
else
	echo "$file does not exists"
fi

[ -f "$file" ] && echo "Regular file"

[ -r "$file" ] && echo "Is writable"
