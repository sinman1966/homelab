#!/bin/bash
num=$1
if [[ -z $num ]]
then
    echo num=`ran -M 99`
fi
if [[ $num -eq "-h" ]]
then
    echo "Usage: $0 <number>"
    echo "   <number> is number of files to generate"
    exit 0
fi

for n in `seq 1 $num`
do 
    name=`rand -M 99999999`
    dd if=/dev/urandom of=${name} bs=10K count=`rand`
done
