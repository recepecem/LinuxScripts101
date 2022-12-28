#!/bin/bash

OLD_IFS=$IFS
IFS='-'

if ! [ -f Concatenated ]
then
	touch Concatenated
fi

read -ra array <<< "$1"

for i in "${array[@]}";
do
	cat $i >> Concatenated
done


IFS=$OLD_IFS
