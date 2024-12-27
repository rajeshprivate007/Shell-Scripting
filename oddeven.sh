#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 25th December 2024
#
#The script will print the odd and even numbers between 1 to 100.
#
#Version: v1
#
############################

for i in {1..100};
do
    if [ `expr $i % 2` == 0 ];
    then
        echo "Even Number: $i"
    else
        echo "Odd Number: $i"
    fi
done