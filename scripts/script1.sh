#!/usr/bin/env bash

# Get data_file.txt content excluding header, re-arrange col for output, replace column 5 value with UID-num
# Sorting by vote
# Fix some wrong chars
# Update TODO with a DATE
# Uppercase results

awk 'NR>1 { print "UID-"$5 "," $2 "," $3 "," $4 "," $6 }' data_file.txt |\
    sort -r -k 4 |\
    tr 'è' 'e' |\
    sed "s/TODO/$(date +%F)/gI" |\
    tr '[:lower:]' '[:upper:]'
