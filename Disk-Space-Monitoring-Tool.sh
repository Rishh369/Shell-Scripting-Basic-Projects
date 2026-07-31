# This script monitors disk space usage and sends an email alert if the usage exceeds the given threshold.

#!/bin/bash

# Set the threshold percentage for disk space usage
threshold=80

# Get the current disk space usage percentage for the root filesystem
disk_usage= $(df -h | awk 'NR==2 {print $5}' | tr -d '%')

echo "Current disk usage: ${disk_usage}%"

#check if the disk usage exceeds the threshold
if [ "$disk_usage" -gt "$threshold" ]
then
    echo "WARNING: Disk usage is ${disk_usage}% which is above the threshold of ${threshold}%."

    # Save warning to a report
    {
        echo "===================================="
        echo "Disk Usage Report"
        echo "Date      : $(date)"
        echo "Hostname  : $(hostname)"
        echo "Disk Usage: ${disk_usage}%"
        echo "Threshold : ${threshold}%"
        echo "Status    : WARNING - Threshold Exceeded"
        echo "===================================="
    } > disk-report.txt
    echo "Report generated: disk-report.txt"

    # Send email notification
    echo "Disk Usage is ${disk_usage} on ${hostname} has exceeded the threshold of ${threshold}%" \
    | mail -s "Disk Space Alert!!" rishhh@gmail.com
    echo "Email notification sent"
else
    echo "Disk usage is within the safe limit."
fi 



