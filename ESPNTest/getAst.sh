#!/bin/sh

FIRST=$1
LAST=$2

URL=$3

curl -sL $URL | grep -Eo "${FIRST}-${LAST}.*player-uid" | cut -d ' ' -f14 | grep -Eo "\"ast\">[[:digit:]]{1,2}<" | grep -Eo [[:digit:]]+ 

