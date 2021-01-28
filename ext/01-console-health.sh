#!/bin/bash
# Check to validate Console URL is accessible
#
CONSOLE='https://console-openshift-console.apps.cluster-0307.0307.sandbox629.opentlc.com'

http_code=`curl -s -o /dev/null -w "%{http_code}" $CONSOLE`

if [[ $http_code == 200 ]]
then
	echo -n "EXT: Console Health Check,OK"
else
	echo -n "EXT: Console Health Check , FAILED"
fi

