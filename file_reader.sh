#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "Please pass delimited file with serverIP and path"
    exit 1
fi
while IFS=',' read -r -a array; do
#    perl perl_script.pl ${array[0]} ${array[1]}
    pbrun -h ${array[0]} /perl_path/perl_script.pl ${array[1]} ${array[2]}
#    pbrun -h ${array[0]} /perl_path/perl_script.pl ${array[1]} >> /tmp/${array[0]}.txt ## >> appends output towards end of file /tmp/${array[0]}.txt
done < "$1"
#while read -r path; do
#    perl perl_script.pl $path
#done < "$1"
