#!/bin/sh

URL=$1

curl -sL $URL | grep -Eo "player/_/id/[[:digit:]]+/[[:alpha:]]+-[[:alpha:]]+\"" | cut -d / -f5 | tr -d \"

