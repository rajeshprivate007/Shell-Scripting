#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 22nd December 2024
#
#The script will check the disk space.
#
#Version: v1
#
############################

disk_size=`df -h | grep "/dev/root" | awk '{print $5}' | cut -d "%" -f 1`
echo "$disk_size" of disk is filled.
if [ $disk_size -gt 80 ];
then
    echo "Disk is utilized more than 80%, please expand or remove unused files."
else
    echo "Disk is having enough space now"
fi