#!/bin/bash
info='no_justTest'
export SYSTEM_UUID=`echo ${info:3:8}`
echo $SYSTEM_UUID
/usr/local/bundle/bin/fluentd $FLUENTD_ARGS