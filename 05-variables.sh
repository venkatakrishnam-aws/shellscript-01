#!/bin /bash

echo "Please enter your username" 
read -s username


echo "Please enter your password:"
read -s password
date=$(date)
time=$(date +%T)
echo "username is: $username and password is: $password"

echo "Current date and time: $date $time"

