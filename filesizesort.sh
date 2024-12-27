#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 22nd December 2024
#
#The script will check the top sized files in selected path.
#
#Version: v1
#
############################

path = "$1"
echo $path
du -ah $path | sort -hr | head -n 5 > /tmp/filesize.txt
echo "This is the list of big files in the file system $path "
cat /tmp/filesize.txt