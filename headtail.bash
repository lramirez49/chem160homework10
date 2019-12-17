#!/bin/bash
if [ ! -f $1 ]; then
echo " no file found "
exit 1
fi
intregex='^[0-9]+$'
if ! [[ $2 =~ $intregex ]]; then
echo " second argument must be an integer"
exit 1
fi
echo "head"
head -n $2 $1
echo "tail"
head -n $2 $1

