#!/bin/bash

# ------- If Statements------------
read -p "Enter your age " age
if [ $age -lt 18 ]; then
	echo "person is Minor"
else
   echo "Person is Major"	
fi

# - if-else-if condition
read -p "Enter your gender (m/f/none) " gender
if [ $gender = m ]; then
	echo "Gender is boy"
elif [ $gender = f ]; then
        echo "Gender is girl"
else
  echo "Taking as Transgender if none is applicable"
fi  


# Sample login on prodution and staging environment
read -p "Can you speicify the environment to store secrets (prod/staging) " environment
if [ "$environment" = "prod" ]; then
	read -p "Enter available cpu cores (4/8) " cpu
     if [ "$cpu" -ge 4 ]; then
	     echo "Production hardware check passed: Proceeding with deployment"
     else
       echo "Production deployment halted: At least 4 CPU cores required"
     fi       
elif [ "$environment" = "staging" ]; then
	echo "Staging environment: Hardware checks bypassed. Proceeding."
else
	echo "Invalid environment specified. Exiting."
fi

echo "----------------Pre-Flight Database Server Check------------------------"
read -p "Enter available CPU cores: " cpu
read -p "Enter available RAM in GB: " ram

echo "---------------Checking Hardware Requirements-----------------"
if [ "$cpu" -ge 4 ] && [ "$ram" -ge 16 ]; then
	echo "Hardware check passed: Server meets database requirements."
else
   echo "Hardware check failed: Needs at least 4 cores and 16GB RAM."
fi   


# --------STRING COMPARISON---------------------
read -p "Enter service status (running/stopped): " status
read -p "Enter desired action (start/stop/restart): " action

if [ "$status" = "stopped" ] && [ "$action" = "start" ]; then
	echo "Valid action: Starting the service now..."
elif [ "$status" = "running" ] && [ "$action" = "stop" ]; then
        echo "Valid action: Starting the service now..."
elif [ -z "$status" ] && [ "$action" = "restart" ]; then  
	echo "Valid action: Restarting the service..."
else
   echo "Error: Cannot perform action '$action' while service is '$status'."
fi


