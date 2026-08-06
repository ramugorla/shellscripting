#!/bin/bash 

USERID=$(id -u)

#Colors
N="\e[37m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

LOGS_FOLDER="/home/ec2-user/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP"

echo $LOG_FILE

check_root(){
    if [ $USERID -ne 0 ]
    then 
        echo "ERROR: You should have root access"
        exit 1 
    fi 
}

check_root

ls -l 1>$LOG_FILE_NAME   # This will redirect only when cmd become success 

lsss -l 2>$LOG_FILE_NAME  #This will redirect only when cmd become failure 

ls -l &>$LOG_FILE_NAME  # This will redirect when either the cmd success or not success also

ls -l 1>>$LOG_FILE_NAME  # This will append to the existing line 

lss -l 2>>$LOG_FILE_NAME # This will append to the existing line 


ls -lt &>>$LOG_FILE_NAME  # This will append to the existing line 
