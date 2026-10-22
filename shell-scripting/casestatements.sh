#!/bin/bash

read -p "Enter your choice(1/2/3/4): " choice

case $choice in 
	1)
		echo "option 1 seletecd"
		;;

         2)
		 echo "option 2 selected"
		 ;;
	 3)
		 echo "option 3 selected"
		 ;;

	*)
		echo "Invalid option"
		;;

esac		
	       

echo "-----------------User Confirmation Prompt---------------------------"

read -p "Do you want to continue?(yes/no/y/n/Y/N/YES/NO): " answer

case "$answer" in
	y|yes|Y|YES)
		echo "Proceeding with the operation.."
		;;
		     
        n|no|N|NO)
		echo "Operation aborted by user."
	      	;;

        *)
          	echo "Invalid input. Please enter yes or no."
	  	;;
esac		


echo "=---------PATTERN MATCHING-----------"

read -p "Provide the file extension(.txt/.sh) " file
case $file in
	.txt)
		echo "it is a text '$file' file"
		;;
	.sh)
	        echo "it is a shell '$file' script"
	        ;;
	*)
	        echo "Invalid file extension"	
                ;;
esac	     	



  
