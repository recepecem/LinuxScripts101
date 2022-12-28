#!/bin/bash

echo -n "length: "
read len

for (( len; len > 0; len-- ))
do
    rand=$[ $RANDOM % 93 + 33 ] # in ASCII between 33-126' th characters are fine for our problem. (126-33=93)
    printf "\x$(printf %x $rand)"
done
