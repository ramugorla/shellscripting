#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: You need root access to run this script"
    exit 1 
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 ... FAILURE"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi 
}


dnf list installed mysql 
if [ $? -ne 0 ]
then
    dnf install mysql -y 
    VALIDATE $? "Installing MYSQL"
else
    echo "Mysql is Already ... Installed"
fi


dnf list installed git 
if [ $? -ne 0 ]
then
    dnf install git -y 
    VALIDATE $? "Installing Git"
else
    echo "Git is Already ... Installed"
fi


