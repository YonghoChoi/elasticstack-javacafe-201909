#!/bin/sh
DIR_NAME=programs
if [ $1 = "elasticsearch" ] || [ $1 = "logstash" ] || [ $1 = "kibana" ] || [ $1 = "filebeat" ] || [ $1 = "metricbeat" ] ] ; then
  kill -9 `cat $ELASTICSTACK_HOME/$DIR_NAME/$1/$1.pid`
else
  echo "invalid argument : $1"
fi
