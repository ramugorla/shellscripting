#!/bin/bash 

echo "All variables passed: $@"
echo "Number of passed: $#"
echo "Current script name: $0"
echo "Current user home directory: $HOME"
echo "current script User: $USER"
echo "Present working Dir: $PWD"
echo "Current script PID: $$"
sleep 20 &
echo "PID of last command running inbackgroud: $!" 