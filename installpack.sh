#!/bin/bash

id=$(id -u)
if [ "$id" -ne 0 ]; then
    echo "Please run as root"
    exit
else
    echo "Running as root"
fi

echo "All the arguments passed to the script are: $@"
echo "The number of arguments passed to the script are: $#"