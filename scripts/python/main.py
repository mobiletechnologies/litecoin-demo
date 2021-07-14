#!/usr/bin/python
# -*- coding: UTF8 -*-

import re
import sys, getopt
from datetime import date

# Simply return vote column value in the string
def get_vote(elem):
    return re.split(' ', ' '.join(elem.split()))[4]

def show_usage():
    print ('main.py -i <inputfile>')

def main(argv):
    inputfile = ''
    outputfile = ''

    try:
        opts, args = getopt.getopt(argv,"hi:",["ifile="])
    except getopt.GetoptError:
        show_usage()
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print ('main.py -i <inputfile>')
            sys.exit()
        elif opt in ("-i", "--ifile"):
            inputfile = arg

    if inputfile =='':
        show_usage()
        sys.exit(2)
    
    cs = ',' # This is the separator char for the CSV


    try:
        # Opening file
        data = open(inputfile, "r")
        
        # Read the headers row
        headers = data.readline()

        # Read data in an array
        rows=data.read().splitlines()

        # Sorting by vote
        rows.sort(key=get_vote, reverse=True)

        # Loop through elements
        for x in rows:
            line = re.split(' ', ' '.join(x.split())) 
            txt = "UID-" + line[4] + cs + line[1].replace('è','e') + cs + line[2] + cs + line[3] + cs + date.today().strftime("%Y-%m-%d")
            print(txt.upper())
            
    finally:
        data.close()

if __name__ == "__main__":
   main(sys.argv[1:])