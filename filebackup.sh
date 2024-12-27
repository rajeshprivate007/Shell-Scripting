#!/bin/bash

###########################
#Author: Rajesh kumar Sahu
#Date: 25th December 2024
#
#The script will zip the target folder's files and transfer them to a backup folder.
#
#Version: v1
#
############################

backup_dir=("/apps" "/scripts")
dest_dir="/home/rajesh/backup"
mkdir -p $dest_dir
backup_date=$(date +%b-%d-%y)

echo "Starting backup of : ${backup_dir[@]}"

for i in "${backup_dir[@]}";
do
    sudo tar -Pczf /tmp/$i-$backup_date.tar.gz $i

    if [ $? -eq 0 ];
    then
        echo "$i backup Successed."
    else
        echo "$i backup Failed."
    fi

    cp /tmp/$i-$backup_date.tar.gz $dest_dir
    if [ $? -eq 0 ];
    then
        echo "$i transfer Successed."
    else
        echo "$i transfer Failed."
    fi
done

sudo rm /tmp/*.gz
echo "Backup is Done."

