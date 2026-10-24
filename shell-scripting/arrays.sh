#!/bin/bash

echo "*******Array defination********"

bikes=("RE" "Honda" "bmw")

echo "First Bike : ${bikes[0]}"
echo "List of Bikes: ${bikes[@]}"
echo "Count of Bikes: ${#bikes[@]}"
echo "List of Bikes: ${bikes[*]}"


# addition of new bike to the list
bikes+=("Triumph")

echo "List of Bikes: ${bikes[@]}"

# removal of item from array
# unset bikes[2]
echo "List of Bikes: ${bikes[@]}"


echo "******* Array Operations************"


for bike in "${bikes[@]}"; do
    echo "$bike"
done	


echo ${bikes[@]:0:2}




echo "Index numbe of bikes: ${!bikes[@]}"


bikes_copy=("${bikes[@]}")
echo "List of new showroom: ${bikes_copy[@]}"

echo ${!bikes_copy[@]}


cars=("creta" "kia" "skoda" "MG")

echo "Cars list: ${cars[@]}"


for car in "${cars[@]}"; do
	echo $car
done

echo "**** concatinating both cars and bike into one array"


all=("${bikes[@]}" "${cars[@]}")

echo "Updated list of Cars and bikes: ${all[@]}"


echo "Associative Arrays"


# declare associative arrays
declare -A roles

# set the values to the array roles
roles[john]=Sales
roles[wick]=customerservice
roles[sam]=developer


echo "role of John in xyz comapny: ${roles[john]}"

echo "employees list for the the roles: ${!roles[@]}"
echo "Designation assigned list for the the roles: ${roles[@]}"


for employee in "${!roles[@]}"; do
    echo "$employee works as ${roles[$employee]}"
done	


echo "Commands Subsitiion and Capturing commands output"
 # using $()
echo "current_date=$(date)"
echo "file_list=$(ls -ltr)"
echo "file_directory_path=$(pwd)"





