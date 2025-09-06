#!/bin/bash

number1=$1
number2=$2
add=$(($1+$2))
add $(200,303)
echo "The addition of $1 and $2 is : $add"
echo "The script name is : $0"
echo "The number of arguments passed : $#"
echo "The arguments passed are : $*"
echo "The arguments passed are : $@"