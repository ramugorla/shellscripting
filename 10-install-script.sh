#!/bin/bash

USERID=$(id -u)


TIMESTAMP=$(date)

if [ $USERID -ne 0 ]
then 
    echo "ERROR: To run this command you should have root user access"
    exit 1
fi 

echo "Script is executed at: $TIMESTAMP"

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "Installing MYSQL ... FAILURE"
        exit 1
    else
        echo "Installing MYSQL ... SUCCESS"
    fi 
else
    echo "MYSQL is Already ... Installed"
fi 



# dnf install mysql -y
# if [ $? -ne 0 ]
# then
#     echo "Installing MYSQL ... FAILURE"
#     exit 1
# else
#     echo "Installing MYSQL ... SUCCESS"
# fi


dnf list installed git 
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Installing GIT ... FAILURE"
        exit 1
    else
        echo "Installing GIT ... SUCCESS"
    fi
else
    echo "Git is already ... Installed"
fi 

# dnf install git -y
# if [ $? -ne 0 ]
# then
#     echo "Installing GIT ... FAILURE"
#     exit 1
# else
#     echo "Installing GIT ... SUCCESS"
# fi
