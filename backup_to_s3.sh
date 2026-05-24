#!/bin/bash
# Automated Backup Script with AWS S3 Upload
# Author: Chatsuda
# Description: Compresses important files and uploads to S3 bucket

BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
S3_BUCKET="s3://chatsuda-backup-2026"

# Create backup directory if not exists
mkdir -p "$BACKUP_DIR"

# Create test file to backup
mkdir -p "$HOME/important-files"
echo "This is a test file - $TIMESTAMP" > "$HOME/important-files/test.txt"

# Create the backup
tar -czf "$BACKUP_FILE" -C "$HOME/important-files" .

# Upload to S3
aws s3 cp "$BACKUP_FILE" "$S3_BUCKET/"

echo "Backup completed!"
echo "File: $BACKUP_FILE"
echo "Uploaded to: $S3_BUCKET"
