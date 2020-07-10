




curl -sL $1 | grep -E "scoreboardData" | grep -Eo "www.espn.com/mens-college-basketball/boxscore\?gameId=[[:digit:]]+" 
