#!/bin/bash

for fileName in *
do
echo "file name: $fileName"
done

for i in {1..100}
do 
    if [[ ( "$i" -gt "10" ) && ( "$i" -lt "50" ) ]]; then
    echo "i: ${i}"

fi 
done