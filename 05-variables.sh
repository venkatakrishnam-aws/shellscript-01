#!/bin /bash

echo "Please enter your username" 
read -s username
date = $(date)

echo "Please enter your password:"
read -s password
echo "username is: $username and password is: $password"

echo "Current date and time: $date"

