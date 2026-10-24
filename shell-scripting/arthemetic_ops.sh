#!/bin/bash


# arthemetic operations
# using $(( ))
a=5
b=100
sum=$(( a + b ))

echo "result is : $sum"

# Increment/decrement ops
count=0
count=$(( count + 1 ))
echo "result is : $count"
((count++))
echo "result is : $count"
((count--))
echo "result is : $count"

# using let
let sum=a+b
echo "result: $sum"
let count++
echo "result: $count"

# using awk command

result=$(awk "BEGIN {print 10*154}")
echo "resut is : $result"


# String Manipulation Pattern matching
filename="file3.txt"
echo "${filename%.txt}"

echo "File state : $filename"

path="/home/ec2-user/shell-scripting"

echo "${path##*/}"

echo "${path#*/}"



# search and replace
text="Welcome to Kia kia"
echo "${text/to/my}"


echo "${text//kia/hynudai}"
