#!/bin/bash

USERID=$(id -u)


TIMESTAMP=$(date)

if [ $USERID -ne 0 ]
then 
    echo "ERROR: To run this command you should have root user access"
    exit 1
fi 

echo "Script is executed at: $TIMESTAMP"


dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "Installing MYSQL ... FAILURE"
else
    echo "Installing MYSQL ... SUCCESS"
fi 

dnf install git -y
if [ $? -ne 0 ]
then
    echo "Installing GIT ... FAILURE"
else
    echo "Installing GIT ... SUCCESS"
fi
