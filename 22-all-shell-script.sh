#!/bin/bash

#this line is commented

# echo "Hello world"
# echo "Hi Ramu"

# PERSON1=RAMU
# PERSON2=LAXMAN

# echo "$PERSON1: Hi $PERSON2"
# echo "${PERSON2}: Hlo $PERSON1"
# echo "$PERSON1: H R U $PERSON2"
# echo "$PERSON2: Fyn $PERSON1 and wt abt U"

# PERSON1=$1
# PERSON2=$2


# echo "$PERSON1: Hi $PERSON2"
# echo "${PERSON2}: Hlo $PERSON1"
# echo "$PERSON1: H R U $PERSON2"
# echo "$PERSON2: Fyn $PERSON1 and wt abt U"


# echo "Please enter your user name: "

# read -s USERNAME

# echo "$USERNAME"

# echo "Please enter your password: "

# read -s PASSWORD 

# echo "$PASSWORD"


# NUMBER1=$1
# NUMBER2=$2

# SUM=$(( $NUMBER1 + $NUMBER2 ))

# echo "Sum of $NUMBER1 and $NUMBER2 is: $SUM"

# echo $(date)


# MOVIES=("Devara" "rrr" "OG")

# echo "First Movies is: ${MOVIES[0]}"
# echo "Second Movie is: ${MOVIES[1]}"
# echo "Last Movie is: ${MOVIES[-1]}"
# echo "List of all Movies are: ${MOVIES[@]}"


# echo "All variables passed: $@"
# echo "Number of passed: $#"
# echo "Script name: $0"
# echo "Present working dir: $PWD"
# echo "current script user: $USER"
# echo "current user home dir: $HOME"
# echo "PID of current script: $$"
# sleep 10 &
# echo "PID of last cmd in background: $!"


NUMBER=$1

if [ $NUMBER -gt 15 ]
then
    echo "Given $NUMBER is greater than 15"
else
    echo "Given $NUMBER is less than 15"
fi 




if [ $NUMBER%2 -eq 0 ]
then
    echo "Given $NUMBER is even"
else
    echo "Given $NUMBER is odd"
fi