#!/bin/sh

FIRST=$1
LAST=$2

URL=$3

curl -sL $URL | grep -Eo "${FIRST}-${LAST}.*class=\"name\"" | cut -d ' ' -f15 | grep -Eo "\"stl\">[[:digit:]]{1,2}<" | grep -Eo [[:digit:]]+ 

