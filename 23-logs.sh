#!/bin/bash 

USERID=$(id -u)


N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

if [ $USERID -ne 0 ]
then
    echo "NOTIFY:: You need root access to create the dir in /var/log"
    exit 1
fi


SOURCE_DIR="/home/ec2-user/app-logs"


LOGS_FOLDER="/var/log/shellscript-logs"
LOGS_FILE=$(echo $0 | awk -F "/" '{print $NF}' | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOGS_FILE-$TIMESTAMP"


mkdir -p $SOURCE_DIR
mkdir -p $LOGS_FOLDER


FILES=$(find $SOURCE_DIR -name "*.log" -mtime +14)

#echo "Files to be deleted: $FILES"  &>>$LOG_FILE_NAME

while read -r file
do 
    echo "Files to be deleted: $FILES" &>>$LOG_FILE_NAME
    rm -rf $FILES
    echo "Deleted Files: $FILES" &>>$LOG_FILE_NAME
done 

