#!/bin/sh


FIRST=$1
LAST=$2
URL=$3

echo "Points: " $(sh getPts.sh $1 $2 $3)
echo "Assists: " $(sh getAst.sh $1 $2 $3)
echo "Rebounds: " $(sh getReb.sh $1 $2 $3)
echo "Steals: " $(sh getStls.sh $1 $2 $3)
echo "Blocks: " $(sh getBlks.sh $1 $2 $3)
