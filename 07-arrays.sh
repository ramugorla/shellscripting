#!/bin/bash 

MOVIES=(RRR, NTR, DEVARA)

echo "First Movie is: ${MOVIES[0]}"
echo "second Movie is: ${MOVIES[1]}"
echo "All Movies are: ${MOVIES[@]}"
echo "second Movie is: ${MOVIES[-2]}"