#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 22nd December 2024
#
#The script will delete the logs which are older than 30 days.
#
#Version: v1
#
############################

path = "$1"
echo $path
find $path -mtime +30 -delete
if [[ $? -eq 0 ]];
then
    echo "Files are deleted sucessfully."
else
    echo "Deletion has some issue. "
fi