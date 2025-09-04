#!/bin/bash

ID=$(id -u)
if [ "$ID" -ne 0 ] 
then
    echo "Please run as root"
    exit
    fi
    