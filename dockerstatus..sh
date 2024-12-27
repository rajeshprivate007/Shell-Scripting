#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 25th December 2024
#
#The script will check if docker is installed or not if not it will install. Then it will check docker status and print it.
#
#Version: v1
#
############################

# systemctl status docker : Prints the docker status
# systemctl status docker | awk 'NR=3 {print}'  : It prints the 3rd line of the result which contains docker status
# systemctl status docker | awk 'NR=3 {print}' | cut -d ":" -f 2  -> Prints the status and its rest of the part of line but we only need just status, so we need to use another cut command
# systemctl status docker | awk 'NR=3 {print}' | cut -d ":" -f 2 | cut -d "(" -f 1  -> Prints only status because we separating the fields with ( as after status there is a bracket field.

echo "==== Checking the Docker Status ====="
if command -v docker &> /dev/null
then
    echo "Docker is installed."
    # Optionally, check the Docker version
    docker --version
else
    echo "Docker is not installed. So its installing now...."
        # Add Docker's official GPG key:
        sudo apt-get update
        sudo apt-get install ca-certificates curl
        sudo install -m 0755 -d /etc/apt/keyrings
        sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
        sudo chmod a+r /etc/apt/keyrings/docker.asc

        # Add the repository to Apt sources:
        echo \
        "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
         $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
        sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        sudo apt-get update
        sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

fi

status=$(systemctl status docker | awk 'NR==3 {print}' | cut -d ':' -f 2 | cut -d '(' -f 1)
echo $status
if [ $status == "active" ];
then
    echo "Docker is active and Running"
else
    echo "Docker is not running"
fi

