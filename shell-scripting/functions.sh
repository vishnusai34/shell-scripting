#!/bin/bash

echo "------ Functions Basic program-------"

wish()
   {
         name="$1"
         location="$2"
	 echo "Hello $name, Are  you in $location??"
	 echo "All Arguments: $@"
	 echo "Argument length: $#"
   }

wish Max Texas

echo "=------- Prints default value"

Onboard(){
	local name=${1:-freedemo}
	echo "Hello, $name"
}
Onboard 
Onboard Levis

echo "***************** Checking the logic with if else********************"

Isexists() {
    if [ -f "$1" ]; then
	  echo "file $1 is present"  
	  return 0

    else
	   echo "file $1 is not present"  
	  return 1
    fi	  
}

if Isexists "/home/ec2-user/shell-scripting/shell-scripting/file7.txt"; then
   echo "file check pass" 
else
     echo "file check failed "	
fi   


echo "**** checking directory esists or not"

Isdirexists() {
    if [ -d "$1" ]; then
          echo "directory $1 is present"
          return 0

    else
           echo "directory $1 is not present"
          return 1
    fi
}

if Isexists "/home/ec2-user/devops"; then
   echo "directory check pass"
else
     echo "directory check failed "
fi



echo "****** returning through echo"

get_name(){
	echo "John Deo"
}
name=$(get_name)
echo $name


echo "******* returning via vairable"

Calculator(){
	local result=$(( $1 + $2 ))
        echo $result
}

sum=$(Calculator 10 20)
echo $sum



