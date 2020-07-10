#!/bin/sh


FIRST=$1
LAST=$2
URL=$3

echo "Points: " $(sh ./Accessors/getPts.sh $1 $2 $3)
echo "Assists: " $(sh ./Accessors/getAst.sh $1 $2 $3)
echo "Rebounds: " $(sh ./Accessors/getReb.sh $1 $2 $3)
echo "Steals: " $(sh ./Accessors/getStls.sh $1 $2 $3)
echo "Blocks: " $(sh ./Accessors/getBlks.sh $1 $2 $3)
