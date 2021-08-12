#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "Please pass delimited file with serverIP and path"
    exit 1
fi
#while IFS=',' read -r -a array; do
#    perl perl_script.pl ${array[0]} ${array[1]}
#done < "$1"
while read -r path; do
    perl perl_script.pl $path
done < "$1"
