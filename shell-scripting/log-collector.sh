#!/bin/bash

echo "=========== LOG MONITORING FLASK-APP=================================="

CONTAINER="flask-app"
LOG_DIR="/home/ec2-user/flask-logs"
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
LOG_FILE="$LOG_DIR/app_${TIMESTAMP}.log"

echo "=========================Checking if LOG_DIR is created or not======================================"

if [ -d "$LOG_DIR" ]; then
	echo "Direoctory Already exists, Proceeding with the Log monitoring"
else
       echo "Creating the driectory"
       mkdir -p /home/ec2-user/flask-logs
        echo "Directory $LOG_DIR successfully created"
fi


if docker ps | grep "${CONTAINER}"; then
	echo "Container : $CONTAINER is Up and running"

	echo "Dumping logs fpr $CONTAINER============================="
        docker logs --tail 50 "$CONTAINER" >> "$LOG_FILE" 2>&1

	echo "LOGS successfully saved to: $LOG_FILE"

else
	echo "Container is Down, check the service ============="
        exit 1	
	
fi

