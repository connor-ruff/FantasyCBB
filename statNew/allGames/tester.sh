#!/bin/sh

while [ $# -gt 0 ] ; do
	ID=$1
	curl -sL https://www.espn.com/mens-college-basketball/boxscore?gameId=$1 | grep -Eo "class=\"ast\""  > ${ID}_HTML

	shift
done

