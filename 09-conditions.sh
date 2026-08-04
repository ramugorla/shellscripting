#!/bin/bash 

NUMBER=$1

# -eq, -ne, -gt, -lt, -ge, -le

if [ $NUMBER -gt 10 ]
then
    echo "Given $NUMBER is greater than 10"
else
    echo "Given $NUMBER is not greater than 10"
fi 