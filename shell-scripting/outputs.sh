#!/bin/bash

echo "Hello World"

echo "Hello "
echo "World"

# -- Echo with esacpe and tab sequence
echo -e "Code error\nmessage\toutput\nresult"

# - Prints the variables
printf "Name:%s, Age:%d\n" "John" 25
printf "%.4f\n" 7.67845


# Redirecting Outputs
echo "Hello" > file.txt

echo "Welcome to DevOps Journey" >> file.txt

# Redirect stdrr
cd devops 2>error.log
ls -ltr 1>sucess.log

# Redirect both stderr and stdout
ls -ltr > output.log 2>&1

# Discard output
ls -ltr &> /dev/null
