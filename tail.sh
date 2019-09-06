#!/bin/sh
DIR_NAME=programs
if [ $1 = "elasticsearch" ] || [ $1 = "logstash" ] || [ $1 = "kibana" ] || [ $1 = "filebeat" ] || [ $1 = "metricbeat" ] ] ; then
  tail -n 100 -f $ELASTICSTACK_HOME/$DIR_NAME/$1/$1.log
else
  echo "invalid argument : $1"
fi
