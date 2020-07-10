#!/usr/bin/env python

import requests
import re
import sys
import os

def getPts(data, fName, lName):	
	regExp = re.compile(rf"{fName}-{lName}.*?pts\">(\d+)<")
	mo = regExp.search(data)
	return mo.group(1)

def getRbs(data, fName, lName):
	regExp = re.compile(rf"{fName}-{lName}.*?\"reb\">(\d+)<")
	mo = regExp.search(data)
	return mo.group(1)

def getAst(data, fName, lName):
	regExp = re.compile(rf"{fName}-{lName}.*?\"ast\">(\d+)<")
	mo = regExp.search(data)
	return mo.group(1)

def getBlk(data, fName, lName):
	regExp = re.compile(rf"{fName}-{lName}.*?\"blk\">(\d+)<")
	mo = regExp.search(data)
	return mo.group(1)

def getStl(data, fName, lName):
	regExp = re.compile(rf"{fName}-{lName}.*?\"stl\">(\d+)<")
	mo = regExp.search(data)
	return mo.group(1)

	
	

def main(url, first, last):

	fName = first
	lName = last
	data = str(requests.get(url).content)
	
	print(first, last, sep=" ");
	print('Points: ', getPts(data, fName, lName))
	print('Rebounds: ', getRbs(data, fName, lName))
	print('Assists: ', getAst(data, fName, lName))
	print('Blocks: ', getBlk(data, fName, lName))
	print('Steals: ', getStl(data, fName, lName))
	print();







if __name__ == '__main__':
	main(sys.argv[1], sys.argv[2], sys.argv[3])
