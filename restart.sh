#!/bin/sh
if [ $1 = "elasticsearch" ] || [ $1 = "logstash" ] || [ $1 = "kibana" ] || [ $1 = "filebeat" ] || [ $1 = "metricbeat" ] ] ; then
  ./stop.sh $1
  ./start.sh $1 
else
  echo "invalid argument : $1"
fi
