#!/bin/bash 

N="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"

# if [ $USERID -ne 0 ]
# then
#     echo "NOTIFY:: You need root access to create the dir in /var/log"
#     exit 1
# fi


SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}



LOGS_FOLDER="/var/log/shellscript-logs"
LOGS_FILE=$(echo $0 | awk -F "/" '{print $NF}' | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOGS_FILE-$TIMESTAMP"


mkdir -p /home/ec2-user/app-logs
mkdir -p /home/ec2-user/archives
mkdir -p $LOGS_FOLDER

USAGE(){
    echo -e $R "USAGE:: $N <SOURCE_DIR> <DEST_DIR> <DAYS(Optional)>"
}

if [ $# -lt 2 ]
then
    USAGE
fi 


if [ ! -d $SOURCE_DIR ]
then
    echo -e "$SOURCE_DIR Does not exist ... $Y please check $N"
fi 

if [ ! -d $DEST_DIR ]
then
    echo -e "$DEST_DIR Does not exist ... $Y please check $N"
fi

