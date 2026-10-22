#!/bin/bash

for car in bmw mercedes benz; do
	echo "car: $car"
done



cars=("bmw" "mercedes" "benz")
for car in "${cars[@]}"; do
	echo "Car list: $car"
done



bikes=("RE" "Honda" "DOMinor")
for bike in "${bikes[@]}"; do
	echo "Listed Bikes: $bike"
done


for file in *.txt; do
	echo "Processing $file"
	echo "File updateion done completed" >> "$file"
done


for user in $(cat users.pdf); do
	echo "User: $user"
done


echo "-------------WHILE LOOP--------"


while IFS=":" read -r username status; do
	if [ "$status" = "active" ]; then
		echo "Mentioned '$username' is Active"
	elif [ "$status" =  "relieved" ]; then
	        echo "Mentioned '$username'  is rlieved"
	else
	   echo "Unknown status '$status' for $username"	
	fi	
done < users.pdf	


count=1
while [ $count -le 5 ]; do
	echo "Count of no: $count"
	count=$((count+1))
done	


count=1
until [ $count -ge 6 ]; do
      echo "Count is: $count"
      count=$((count+1))
done      




for i in {1..10}; do
    if [ $i -eq 5 ]; then
        break
    fi
    echo $i
done

# Continue (skip iteration)
for i in {1..10}; do
    if [ $i -eq 5 ]; then
        continue
    fi
    echo $i
done


