#!/bin/bash

echo -n word: 
read word
grep -i $word $1 | wc -l	# '-i' -> ignore case sensitivity
