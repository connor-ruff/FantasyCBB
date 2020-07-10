#!/usr/bin/env python

import os
import sys
import requests
import re

# My Libs
import getPlayerStats

def getNames(url):

	data = str(requests.get(url).content)

	allPlayers = re.finditer(rf'player/_/id/\d+/(.*?)-(.*?)\"', data)
	for x in allPlayers:
		getPlayerStats.main(url, x.group(1), x.group(2))


def player(url, first, last):
	resp = os.popen(f'./getPlayerStats.py {url} {first} {last}') 	
	print(resp.read().rstrip())

def main():

	url = sys.argv[1]
	getNames(url)
	
	






if __name__ == '__main__':
	main()
