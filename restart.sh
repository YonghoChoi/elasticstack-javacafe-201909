#!/bin/bash
if [ $1 = "elasticsearch" ] || [ $1 = "logstash" ] || [ $1 = "kibana" ] || [ $1 = "filebeat" ] || [ $1 = "metricbeat" ] ] ; then
  ${pwd}/stop.sh 
  ${pwd}/start.sh   
else
  echo "invalid argument : $1"
fi
