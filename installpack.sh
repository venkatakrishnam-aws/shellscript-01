#!/bin/bash

id=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

logfile="/tmp/installpack.log"
timestamp=$(date +%F_%H-%M-%S)
echo "The script started at $timestamp" &>> $logfile

validate(){
    if [ $1 -ne 0 ]; then
        echo -e "$2 Warning:: Failed $R $N"
        exit
        else 
        echo -e "$2 Success:: Completed $G $N"
    fi
}

if [ "$id" -ne 0 ]; then
    echo -e "$R Error:: Please run as root $N"
    exit
else
    echo -e "$G Success:: Running as root  $N"
fi

#echo "All the arguments passed to the script are: $@"
#echo "The number of arguments passed to the script are: $#"

for package in "$@" ; do
    yum list installed $package
    if [ $? -ne 0 ]; then
    yum install $package -y
    validate( $? , "Installing the $package")
    else echo -e "$Y Warning:: $package is already installed $N"
    fi
done
