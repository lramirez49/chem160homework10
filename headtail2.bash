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
n=$2
m=$2
if [ $# -eq 3 ]; then
if ! [[ $3 =~ $intregex ]]; then
echo "third argument must be an integer"
exit 1
fi
m=$3
fi
lines=$(cat $1 | wc -l)
if [ $lines -lt $n ] || [ $line -lt $m ];then
echo "file to short"
exit 1
fi
echo "head"
head -n $n $1
echo "tail"
tail  -n $m $1

