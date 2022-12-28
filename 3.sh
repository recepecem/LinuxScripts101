#!/bin/bash
PWD=$(pwd)
if ! [ -d "$PWD/backup" ]
then
	mkdir "$PWD/backup"
fi
cp $1 "$PWD/backup"
mv $1 "$1-backedUp"
