#!/bin/bash

number1=$1
number2=$2
sum=$(($number1+$number2))

    echo "The total is : $sum"
    echo "The script name is : $0"
    echo "The number of arguments passed : $#"
    echo "The arguments passed are : $*"
    echo "The arguments passed are : $@"

