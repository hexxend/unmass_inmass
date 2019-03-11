#!/bin/bash
# hexxend
# Extracts files in bulk from game archive file
#
# Requires debian package unmass


if [ -z $1 ]; then
    echo -e "usage: $0 [archive]\n
extract all files from a game archive file in one command using unmass"
    exit

else

unmass -list $1 | xargs unmass -e $1 

fi
exit
