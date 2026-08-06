#!/bin/bash

USERID=$(id -u)


TIMESTAMP=$(date)

if [ $USERID -ne 0 ]
then 
    echo " ERROR: To run this command you should have root user access"
    #exit 1
fi 

echo "Script is executed at: $TIMESTAMP"


dnf install mysqll -y 

#dnf install git -y
