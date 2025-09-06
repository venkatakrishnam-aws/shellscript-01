#!/bin/bash

ID=$(id -u)

timestamp=$(date '+%Y-%m-%d %H:%M:%S')
logfile="tmp/logfile.log"

echo "scriptname : $0"

validate() {
  if [ $1 -ne 0 ]; then
    echo "Error: $2 ... failed"
    exit
  else
    echo "$2 ... successful"
  fi
}
if [ "$ID" -ne 0 ]
then
    echo "Please run as root"
    exit
else 
    echo "Running with root access"
fi

    yum install mysql -y   &>> logfile.log
    validate  $? "installing mysql server"  
    
    yum install httpd -y   &>> logfile.log
    validate  $? "installing httpd server" 