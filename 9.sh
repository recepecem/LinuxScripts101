#!/bin/bash

echo "!!use it wisely. You may delete your important files!!"
echo "------------------------------------------------------"
found=$(find $1 -atime 30)
echo "$found"
echo
echo "do you want to delete these listed files? (y | n)"
echo -n "=>"
read answer

if [ $answer == "y" ]
then
	rm -rf $found
fi
