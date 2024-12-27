#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 25th December 2024
#
#The script will print the numbers divisible by 3, 5 but not 15. Range is 1-100
#
#Version: v1
#
############################

for i in {1..100};
do
    if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
    then
        echo $i
    fi
done
