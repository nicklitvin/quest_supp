#!/bin/bash

# MySQL credentials and settings
DB_USER="your_username"
DB_PASSWORD="your_password"
DB_NAME="your_database_name"

# Output directory
OUTPUT_DIR="/saved_data"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Generate backup filename with timestamp
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$OUTPUT_DIR/${DB_NAME}_${TIMESTAMP}.sql"

# Perform mysqldump
mysqldump -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"

echo "Backup completed: $BACKUP_FILE"