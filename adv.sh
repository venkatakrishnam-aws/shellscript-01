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
        if [ $? -ne 0 ]; then
        echo "Error: MySQL installation failed"
        exit 1
    else 
    echo "MySQL installation successful"
    fi
    systemctl start mysqld
    systemctl enable mysqld
    echo "MySQL server installed and started"

    yum install git -y
        if [ $? -ne 0 ]; then
        echo "Error: git installation failed"
        exit 1
    else 
    echo "git installation successful"
    fi
    systemctl start git
    systemctl enable git
    echo "git installed and started"
