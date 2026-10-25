#!/binbash

echo "settingup failure fallback"

set -euo pipefail


echo "creating source and destination folders"
mkdir -p /home/ec2-user/database
mkdir -p /home/ec2-user/backup



# Configuration
SOURCE_DIR="/home/ec2-user/database"
BACKUP_DIR="/home/ec2-user/backup"
DATE=$(date +%Y%m%d_%H%M%s)
BACKUP_FILE="backup_${DATE}.tar.gz"



echo "Starting the backup"

tar -czf "${BACKUP_DIR}/${BACKUP_FILE}" "${SOURCE_DIR}"


echo "Validating if backup is sucessful"

if [ $? -eq 0 ]; then
	echo "Backup Completed: $BACKUP_FILE"

        echo "------------------Deleting bakkup files which are 2mins old----------------------"
        find "${BACKUP_DIR}" -name "backup_*.tar.gz" -mmin +5 -delete
	echo "old files are cleaned up"
	echo "files after clean up: $(ls -ltr ~/backup)"
	
else
	echo "Backp failed"
	exit 1
fi	

