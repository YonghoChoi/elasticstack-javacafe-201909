#!/bin/zsh
DIR_NAME=programs
if [ $1 = "elasticsearch" ] ; then
  nohup $(pwd)/$DIR_NAME/$1/bin/$1 > $(pwd)/$DIR_NAME/$1/$1.log 2>&1 &
elif [ $1 = "kibana" ] ; then
  nohup $(pwd)/$DIR_NAME/$1/bin/$1 --host=0.0.0.0 > $(pwd)/$DIR_NAME/$1/$1.log 2>&1 &
elif [ $1 = "logstash" ] ; then
  nohup $(pwd)/$DIR_NAME/$1/bin/$1 $2 $3 > $(pwd)/$DIR_NAME/$1/$1.log 2>&1 &
elif echo "$1" | grep 'beat' ; then
  nohup $(pwd)/$DIR_NAME/$1/$1 -e -c $(pwd)/$DIR_NAME/$1/$1.yml > $(pwd)/$DIR_NAME/$1/$1.log 2>&1 &
else
  echo "invalid argument : $1"
  exit 1
fi

echo "$!" > $(pwd)/$DIR_NAME/$1/$1.pid