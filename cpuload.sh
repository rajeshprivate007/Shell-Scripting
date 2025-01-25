#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 25th December 2024
#
#The script will CPU load of the system.
#
#Version: v1
#
############################

load=`top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}' | cut -d "%" -f1`
echo $load
if [[ ${load%.*} > 1 ]];
then
    echo "CPU load is very high: $load"
else
    echo "CPU load is normal"
fi
