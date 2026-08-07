#!/bin/bash 

#colors
N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

SOURCE="/home/ec2-user/app-logs"
DEST="/home/ec2-user/archieve"
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)

USAGE(){
    echo "USAGE:: <SOURCE_DIR> <DEST_DIR> <DAYS(Optional)>"
}

if [ $# -lt 2 ]
then
    USAGE
fi 

mkdir -p $SOURCE
mkdir -p $DEST

if [ ! -d $SOURCE_DIR ]  # To check whether the dir is existing or not if not this condition will True
then
    echo "$SOURCE_DIR Does not exist ... Please Check"
fi


if [ ! -d $DEST_DIR ]
then 
    echo "$SOURCE_DIR Does not exist ... Please Check"
fi

FILES=$(find $SOURCE_DIR -name "*.log" -mtime +$DAYS)

echo $FILES

if [ -n $FILES ] #true if there are files
then
    echo "Files to zip"
    ZIP_FILE="$DEST_DIR/app-logs-$TIMESTAMP"
    find $SOURCE_DIR -name "*.log" -mtime +$DAYS | Zip -@ "$ZIP_FILE"
    if [ ! -f "$ZIP_FILE" ]
    then
        echo "Succefully created Zip file"
        while read -r file
        do 
            echo $file

        done >>> "$FILES"

    else
        echo "failed to create a zip file"
else
    echo "No files found older than $DAYS"