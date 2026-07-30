#This project shows the system information- 1)host name 2)Kernel Version 3)OS 4)System Uptime 5)CPU Info 6)Memory Usage

#!/bin/bash

echo "==============================="
echo " System Information Report"
echo "==============================="

echo
echo "--------------------" 
echo "Hostname:"
echo "--------------------"
hostname

echo
echo "--------------------"
echo "Kernel Version:"
echo "--------------------"
uname -r

echo
echo "--------------------"
echo "Operating System:"
echo "--------------------"
grep "^PRETTY_NAME" /etc/os-release

echo
echo "--------------------"
echo "System Uptime:"
echo "--------------------"
uptime -p

echo
echo "--------------------"
echo "CPU Information:"
echo "--------------------"
lscpu | grep "Model name"

echo
echo "--------------------"
echo "Memory Usage:"
echo "--------------------"
free -h

echo
echo "--------------------"
echo "Disk Utilization:"
echo "--------------------"
df -h
