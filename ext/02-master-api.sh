#!/bin/bash
# Check to make sure API is accessible from outside cluster. 
#
API_URL='https://api.cluster-0307.0307.sandbox629.opentlc.com:6443'

out=`curl -sk $API_URL/healthz`
if [[ $out == ok ]]
then
       echo -n "EXT: API Health Check,OK"	
fi

