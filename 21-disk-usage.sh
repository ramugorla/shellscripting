#!/bin/bash 

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5
MSG=""


while read -r line
do 
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    PARTION=$(echo $line | awk -F " " '{print $NF}')
    #echo "Partion is $PARTION and usage is $USAGE"
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MSG+="High disk usage on partiotion $PARTION and disk usage is $USAGE"
    fi

done <<< $DISK_USAGE

echo $MSG