#!/bin/bash

# Shell scripting - Sequence of learning concepting from basics


# simple variables
name="sai"
age=25
path="/home/ec2-user"

echo "Name: $name"
echo "Name: ${name}"  # best recommended approach to print
echo "Age: $age"
echo "Age: ${age}"
echo "Age: ${path}"

# command Output to variable
# using varibales like string declaring and passing in the echo
current_date="$(date)"
files="$(ls -ltr)"

echo "date: ${current_date}"
echo "file type: ${files}"

# direct echoing the command  on the screen
echo "current_date: $(date)"

echo "files: $(ls -ltr)"
echo "user_count: $(who | wc -l)"

# Arthmetic logic
count=10
echo "count: $((count+1))"


# Special variables

echo "scriptname: $0"
echo "============= MOVIE PROFILE DETAILS ========================"
echo "Director Name: $1 $2"
echo "Moive Name: $3"
# echo "Actor name: $3"
echo "Location name: $4"

echo "-----Another scenario declaring arguments with variables-----------"

Firstname="$1"
Lastname="$2"
Moviename="$3"
Location="$4"



echo "Movie Director Name: $Firstname $Lastname"
echo "Movie Name: $Moviename"
echo "Location Details: $Location"

name="$5"
city="$6"
state="$7"

echo "name: $name"
echo "CITY: $city"
echo "STATE: $state"

echo "name: $@"


echo "No of Arguments total: $#"

echo "files: $(ls -ltr)"


echo "last command exit code: $?"

echo "process id of current state: $$"

echo "process id of last background state: $!"
