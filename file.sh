#!/bin/bash

echo "hello" > welcome.txt
echo "where do you live" >> welcome.txt


echo read file use cat
cat welcome.txt

echo "read file line by line"

while read line
    do 
        echo $line
done < welcome.txt

echo "write multi line "

cat <<EOF > users.txt
richard
diana 
gianna

EOF