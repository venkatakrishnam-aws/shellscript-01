#!/bin/bash
number=$1

if [ $number -gt 100 ]; then
  echo "The number is greater than 100."
elif [ $number -eq 100 ]; then
  echo "The number is equal to 100."
else
  echo "The number is less than 100."
fi