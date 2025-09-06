#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ] 
then
    echo "Error: Please run this script with root access"
    exit 1
    else 
    echo "Running with root access"
    fi

    yum install mysql-server -y
    systemctl start mysqld
    systemctl enable mysqld
    echo "MySQL server installed and started"
    