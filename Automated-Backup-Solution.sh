#This script automates the backup process for specified directories and files.
#!/bin/bash

# Define the source directories and files to be backed up
source_dir= "/path/to/source/directory"

# Define the destination directory for the backup
backup_dir= "/path/to/backup/directory"

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Timestamp of the backup
timestamp= $(date +"%Y-%m-%d_%H-%M-%S")

# Backup filename with timestamp
backup_file= "backup_file_name-${timestamp}".tar.gz"
echo "starting backup process..."

# Create a compressed backup of the source directory
tar -czf "$backup_dir/$backup_file" "$source_dir"

# Verify if the backup was successful
if [ -f "$backup_dir/$backup_file"]
then 
    echo "Backup Successful"
    echo " Backup File: $backup_file"
else
    echo "Backup Failed"
fi





