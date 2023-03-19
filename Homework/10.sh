#!/bin/bash

time=$(date '+%Y-%m-%d')

tar -czvf temp.tar.gz $1
mv temp.tar.gz $1-$time.tar.gz
