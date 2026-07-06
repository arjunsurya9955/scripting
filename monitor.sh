#!/bin/bash
###########
#Author:Ajilash Edward A
#Date:06/07/26
#Version:1.0
###########

#This is the script for resource monitoring in AWS infra


echo "=============================="
echo " EC2 Monitoring Report"
echo "=============================="

echo ""
echo "Running Services:"
systemctl list-units --type=service --state=running

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h


