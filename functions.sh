#!/bin/bash
#? $0 means caller  ($1 -$9 are variables)


printMe() {
    echo "numer of variable $#"
    echo "all params: $@"
    echo "welcome $1"
    echo "age $2"
    echo "job: $3"
}

# echo hello> job$$
echo "Process ID $$"
printMe Richard 43 "Full Stack Web Developer"

ls ~/Desktop
if [ "$?" = "0" ]; 
then
echo "there is file"
else
echo "there is no file"
fi

