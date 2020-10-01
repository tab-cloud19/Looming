#!/bin/bash
filename='loomings.txt'
dir=$(pwd)
mkdir linesFolder
n=1
while read -r line || [ -n "$line" ]; do
# reading each line
echo "Line No. $n : $line"
echo $n
echo -e "$line\n" >>"$dir/linesFolder/$n.txt"
n=$((n+1))
done < $filename