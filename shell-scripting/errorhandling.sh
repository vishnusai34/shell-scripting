#!/bin/bash

# error handling - checking last exit status (0 = sucess, 1 = failure)
#echo $(zu -r)


if [ $? -eq 0 ]; then
	echo "sucess"
#	return 0
else
   echo "failure"
#   return 1
fi 


validate_input(){
	if [ -z "$1" ]; then
		echo "Error detected, no input provided"
		return 2
	else
	   echo "Entered value is : $1"	
	fi
}

validate_input 1


set -e

echo "start"

# $(der -us)

echo "incoreect command"

# $(ls -ltr)


set -u

DIR="demo"

echo "Deleting $DIR"
echo "deleted: $(rmdir $DIR)"
echo "No variable found"

# piepfail command to catch the error code 0 if all got succeded else failure as 1

#!/bin/bash
set -o pipefail

output=$(cat file8.txt | sort)
status=$?

echo "running a cat command: $output"
echo "Exit code status: $status"
