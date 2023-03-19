#!/bin/bash

count=$( ls -la $1 | wc -l )
echo "$(($count-3))"	# wc command counts newlines in given piped command. 'ls -la' command lists current directory '.', parent directory '..' and total blocks of disc used by current directory.
