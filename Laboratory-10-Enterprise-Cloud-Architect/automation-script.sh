

#!/bin/bash

# CloudNova Database Backup Script

BACKUP_DIR="/opt/cloudnova/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/cloudnova_db_$DATE.sql"

mkdir -p "$BACKUP_DIR"

# Backup MariaDB database
docker exec cloudnova-db mariadb-dump \
-u root -p'ChangeRootPassword123!' nextcloud \
> "$BACKUP_FILE"

# Check backup result
if [ $? -eq 0 ]; then
    echo "Backup successful: $BACKUP_FILE"
else
    echo "Backup failed!"
    exit 1
fi

# Compress backup
gzip "$BACKUP_FILE"

# Delete backups older than 7 days
find "$BACKUP_DIR" -type f -name "*.gz" -mtime +7 -delete

echo "Backup process completed."
