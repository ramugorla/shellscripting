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

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N" &>>$LOG_FILE_NAME
    else
        echo -e "$2 ... $G SUCCESS $N " &>>$LOG_FILE_NAME
    fi
}




check_root


dnf list installed gcc 
if [ $? -ne 0 ]
then
    dnf install gcc -y  &>>$LOG_FILE_NAME
    VALIDATE $? "Installing gcc"
else
    echo -e "gcc is already ... $Y Installed $N" &>>$LOG_FILE_NAME
fi


dnf list installed git 
if [ $? -ne 0 ]
then
    dnf install git -y  &>>$LOG_FILE_NAME
    VALIDATE $? "Installing git"
else
    echo -e "git is already ... $Y Installed $N" &>>$LOG_FILE_NAME
fi


dnf list installed nginx 
if [ $? -ne 0 ]
then
    dnf install nginx -y  &>>$LOG_FILE_NAME
    VALIDATE $? "Installing nginx"
else
    echo -e "nginx is already ... $Y Installed $N" &>>$LOG_FILE_NAME
fi