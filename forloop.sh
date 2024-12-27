#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 24th December 2024
#
#The script will search all the directories and delete particular directory.
#
#Version: v1
#
############################

for folder in $(find -type d);
do
    echo "the folder is $folder"
    if [ -d test ];
    then
        echo "The folder exists"
        echo "Removing the folder"
        rm -rvf test
    else
        echo "The folder doesn't exist"
    fi
done