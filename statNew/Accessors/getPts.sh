#!/bin/sh

FIRST=$1
LAST=$2


curl -sL $3 | grep -Eo "${FIRST}-${LAST}.*class=\"name\"" | cut -d ' ' -f19 | grep -Eo "\"pts\">[[:digit:]]{1,2}<" | grep -Eo [[:digit:]]+ 

