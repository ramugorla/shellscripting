#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error: we need root user access to run this script"
fi

SOURCE_DIR="/home/ec2-user/shell-logs"



mkdir -p $SOURCE_DIR


Files_to_be_deleted=$(find $SOURCE_DIR -name "*.log" -mtime +14 | awk -F "/" '{print $NF}')

echo $Files_to_be_deleted


while read -r file
do 
    echo $file
    
done <<<$Files_to_be_deleted
