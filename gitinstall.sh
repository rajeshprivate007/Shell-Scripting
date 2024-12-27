#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 22nd December 2024
#
#The script will install Git by checking OS.
#
#Version: v1
#
############################

if [ "$(uname)" == "Linux" ];
then
        echo "This is Linux and Git installation is in progress"
        sudo apt install git-all -y
        echo "Git has been installed with the version: "
        git --version
elif [ "$(uname)" == "Darwin" ];
then
        echo "This is MacOS and Git installation is in progress"
        brew install git
        echo "Git has been installed with the version: "
        git --version
else
        echo "Not installing Git"
fi
