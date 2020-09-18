#!/bin/bash
path=$(pwd)
echo "root path: $path"
echo "start reading files"
while read gitLink
do
  
    echo "start cloning project $gitLink"
    arr=(` echo $gitLink | tr '/' ' ' ` )
    appPath="${path}/${arr[3]}"
    echo $appPath
    git clone $gitLink
    cd $appPath
    git log > ../${arr[3]}_log.txt
    rm -rf $appPath
    cd $path
#read authors

while read line
    do
    if [[ $line = "Author: "* ]]; then
        

    if [[ $(grep "$line" "DevelopersEmail.txt") ]]; then
        echo "already saved, not saving again"
    else 
            echo "write developer email into file"
            echo $line >> DevelopersEmail.txt
    fi
    fi

done < ${arr[3]}_log.txt

done < links.txt

