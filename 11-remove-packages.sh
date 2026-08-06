#!/bin/bash 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: You need root access to run this script"
    exit 1 
fi

dnf list installed mysql 
if [ $? -ne 0 ]
then
    dnf remove mysql -y 
    if [ $? -ne 0 ]
    then
        echo "Removing MYSQL ... FAILURE"
    else
        echo "Removing MYSQL ... SUCCESS"
    fi 
else
    echo "Mysql is not ... Installed"
fi


