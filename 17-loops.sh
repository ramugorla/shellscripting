#!/bin/bash 

USERID=$(id -u)

N="\e[37m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

if [ $USERID -ne 0 ]
then
    echo "ERROR: You need root access to run this script"
    exit 1 
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi 
}


for package in $@
do 
    dnf list installed $package
    if [ $? -ne 0 ]
    then 
        dnf install $package -y 
        VALIDATE $? "Installing $package" 
    else
        echo -e "$package is already ... $Y Installed $N"
    fi

done
