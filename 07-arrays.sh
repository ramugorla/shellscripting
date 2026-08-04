#!/bin/bash 

MOVIES=("RRR" "NTR" "DEVARA")

#indexing starts from 0 +ve indexing and -ve indexing starts from -1 

echo "First Movie is: ${MOVIES[0]}"
echo "second Movie is: ${MOVIES[1]}"
echo "All Movies are: ${MOVIES[@]}"
echo "second Movie is: ${MOVIES[-2]}"


