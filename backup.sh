#!/bin/bash

# MySQL credentials and settings
DB_HOST="your_host"
DB_PORT=3306
DB_USER="your_username"
DB_PASSWORD="your_password"
DB_NAME="your_database_name"

# Output directory
OUTPUT_DIR="~/saved_data"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Generate backup filename with timestamp
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_FILE="$OUTPUT_DIR/${DB_NAME}_${TIMESTAMP}.sql"

# Perform mysqldump
mysqldump -h "$DB_HOST" -P "$DB_PORT" -u "$DB_USER" --password="$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"

echo "Backup completed: $BACKUP_FILE"