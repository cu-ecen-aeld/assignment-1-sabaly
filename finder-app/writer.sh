#!/bin/sh
# script write.sh
#autor : sabaly

# Arguments
# 1. WRITEFILE (path including filename)
# 2. WRITESTR (string text)

if [ $# -ne 2 ]
then
    echo "Expected 2 arguments"
    exit 1
else 
    if [ -d "$1" ]
    then
        echo "$1 is a directory, expected to be a file"
        exit 1
    else
        echo "$2" > $1
    fi
fi
