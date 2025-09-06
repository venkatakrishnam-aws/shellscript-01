#!/bin/bash

ID=$(id -u)

validate() {
  if [ $1 -ne 0 ]; then
    echo "Error: $2 ... failed"
    exit 1
  else
    echo "$2 ... successful"
  fi
}
if [ "$ID" -ne 0 ]
then
    echo "Please run as root"
    exit
else 
    echo"Running with root access"
fi

    yum install mysql -y
    validate  $? "installing mysql server"  
    
    yum install httpd -y
    validate  $? "installing httpd server" 