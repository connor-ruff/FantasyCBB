#!/bin/sh

FIRST=$1
LAST=$2

URL=$3

curl -sL $URL | grep -Eo "${FIRST}-${LAST}.*class=\"name\"" | cut -d ' ' -f13 | grep -Eo "\"reb\">[[:digit:]]{1,2}<" | grep -Eo [[:digit:]]+ 

