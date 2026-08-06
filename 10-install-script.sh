#!/bin/bash

USERID=$(id -u)


TIMESTAMP=$(date)

if [ $USERID -ne 0 ]
then 
    echo " ERROR: To run this command you should have root user access"

fi 

echo "Script is executed at: $TIMESTAMP"


dnf install mysql -y 
