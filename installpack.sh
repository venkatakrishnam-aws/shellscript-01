#!/bin/bash

id=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ "$id" -ne 0 ]; then
    echo -e "$R Error:: Please run as root $N"
    exit
else
    echo -e "$G Running as root $G"
fi

echo "All the arguments passed to the script are: $@"
echo "The number of arguments passed to the script are: $#"