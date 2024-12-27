#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 25th December 2024
#
#The script will check if docker status is active or not if not it will start the docker. We will schedule the script using Crontab.
#
#Version: v1
#
############################
echo "==== Checking the Docker Status ====="
status=$(systemctl status docker | awk 'NR==3 {print}' | cut -d ':' -f 2 | cut -d '(' -f 1)
echo $status
if [ $status == "active" ];
then
    echo "Docker is active and Running"
else
    echo "Docker is not running"
    systemctl start docker
fi