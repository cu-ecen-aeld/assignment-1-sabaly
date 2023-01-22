#!/bin/sh
# script finder.sh
#autor : sabaly

# Arguments
# 1. FILESDIR (path to directory)
# 2. SEARCHSTR (string text to search)
set -e
set -u

x=0
y=0

if [ $# != 2 ]
then
    echo "Expected 2 arguments"
    exit 1
else 
    if [ -d "$1" ]
    then
        x=`find $1 -type f | wc -l`
        y=`grep -r "^$2$" $1 | wc -l`
        echo "The number of files are $x and the number of matching lines are $y"
    else
        echo "$1 is not a directory !"
        exit 1
    fi
fi