#!/bin/sh

URL=$1


getNames() {
	curl -sL $URL | grep -Eo "player/_/id/[[:digit:]]+/[[:alpha:]]+-[[:alpha:]]+\"" | cut -d / -f5 | tr -d \" | sed -E 's/-/ /g'
}


allPlayers(){
	while [ $# -gt 0 ] ; do
		echo $1 $2
		echo "$(sh playerStat.sh $1 $2 $URL)"
		shift
		shift
		echo ""
	done
}

allPlayers $(getNames)
