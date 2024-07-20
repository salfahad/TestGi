#!/bin/bash
echo "Hello from My First Shell Script"
FILE="Hello.txt"

if [ -e "$FILE" ];then
   echo "The file $FILE exists"
else
   echo "The file $FILE does not exists"
fi
