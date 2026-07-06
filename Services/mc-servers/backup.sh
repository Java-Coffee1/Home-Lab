#!/bin/bash

BACKUP_FOLDER="/mnt/Rpool_120/okidoki-mc"
BACKUP_DIR="/mnt/Docker-Containers-Backup/mc-servers-backup"
CONTAINER_NAME="okidoki-mc"

mkdir -p "$BACKUP_DIR"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUPFILE="$BACKUP_DIR/okidoki_backup_$DATE.tar.gz"

echo "Flushing Minecraft world..."
docker exec "$CONTAINER_NAME" rcon-cli save-off
docker exec "$CONTAINER_NAME" rcon-cli save-all
sleep 5

echo "Starting backup..."

# tar -czvf "$BACKUPFILE" -C "$BACKUP_FOLDER" .
SIZE=$(du -sb "$BACKUP_FOLDER" | awk '{print $1}')
tar -cf - -C "$BACKUP_FOLDER" . | pv -s $SIZE | gzip > "$BACKUPFILE"

echo "Backup completed: $BACKUPFILE"


echo "Re-enabling Minecraft saves..."
docker exec "$CONTAINER_NAME" rcon-cli save-on

echo "removing old backups..."

find "$BACKUP_DIR" -name "*.tar.gz" -mtime +7 -delete

echo "Done!"