#!/bin/bash 

USERID=$(id -u)

#Colors
N="\e[37m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

check_root(){
    if [ $USERID -ne 0 ]
    then 
        echo "ERROR: You should have root access"
        exit 1 
    fi 
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N"
    else
        echo -e "$2 ... $G SUCCESS $N "
    fi
}




check_root


dnf list installed gcc 
if [ $? -ne 0 ]
then
    dnf install gcc -y 
    VALIDATE $? "Installing gcc"
else
    echo -e "gcc is already ... $Y Installed $N"
fi


dnf list installed git 
if [ $? -ne 0 ]
then
    dnf install git -y 
    VALIDATE $? "Installing git"
else
    echo -e "git is already ... $Y Installed $N"
fi


dnf list installed nginx 
if [ $? -ne 0 ]
then
    dnf install nginx -y 
    VALIDATE $? "Installing nginx"
else
    echo -e "nginx is already ... $Y Installed $N"
fi



