#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 24th December 2024
#
#The script will download Prometheus binary if its not present in system.
#
#Version: v1
#
############################

if [ -e /home/rajesh/https://github.com/prometheus/prometheus/releases/download/v3.0.1/prometheus-3.0.1.linux-amd64.tar.gz ];
then
    echo "The file is already present, no need to download."
else
    echo "Binary is not exist on the system, first need to download it"
    wget https://github.com/prometheus/prometheus/releases/download/v3.0.1/prometheus-3.0.1.linux-amd64.tar.gz
    tar -zxvf /home/rajesh/prometheus-3.0.1.linux-amd64.tar.gz
    echo "File has been extracted, you can start Prometheus now"
fi