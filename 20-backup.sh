#!/bin/bash 

#colors
N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}


USAGE(){
    echo "USAGE:: <SOURCE_DIR> <DEST_DIR> <DAYS(Optional)>"
}

if [ $# -lt 2 ]
then
    USAGE
fi 

