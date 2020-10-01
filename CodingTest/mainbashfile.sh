#!/bin/bash
filename='loomings.txt'
dir=$(pwd)
fullfile="$dir/$filename"

# Count empty space
grep -cvP '\S' $fullfile

# Remove empty lines
sed -i '/^$/d' $fullfile
# #this command returns the file with the empty lines removed.

# Read each line and create a new file. The linenumber is used as the filename
bash readline2.sh

#Create hash files for each line
bash readline3.sh

#List filename and size
bash readline4.sh

#Detect duplicate file, delete duplicate line and compare files
bash readline5.sh
