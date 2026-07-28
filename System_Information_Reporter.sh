#!/bin/bash

echo "==============================="
echo " System Information Report"
echo "==============================="

echo
echo "Hostname:"
hostname

echo
echo "Kernel Version:"
uname -r

echo
echo "Operating System:"
grep "^PRETTY_NAME" /etc/os-release

echo
echo "System Uptime:"
uptime -p

echo
echo "CPU Information:"
lscpu | grep "Model name"

echo
echo "Memory Usage:"
free -h

echo
echo "Disk Utilization:"
df -h
