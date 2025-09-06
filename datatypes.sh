#!/bin/bash

number1=$1
number2=$2
add=$((number1 + number2))



add(200,303)
echo "The addition of $number1 and $number2 is : $add"
echo "The script name is : $0"
echo "The number of arguments passed : $#"
echo "The arguments passed are : $*"
echo "The arguments passed are : $@"