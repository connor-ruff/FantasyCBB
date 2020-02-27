#!/bin/sh

URL=$1

curl -sL $URL | grep -Eo gameId=[[:digit:]]+ | uniq | grep -Eo [[:digit:]]+


