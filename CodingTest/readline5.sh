#!/bin/bash
echo "$(pwd)"
dir3="$(pwd)/linesFolder/"
# echo $dir3
# duplicateFiles="$(find . ! -empty -type f -exec md5sum "$dir3/*" {} + | sort | uniq -w32 -dD | awk '{print $2}')"
echo "Filenames with duplicates: $duplicateFiles"
duplicateFiles2="$(find . ! -empty -type f -exec md5sum "$(pwd)/linesFolder/" {} + | sort | uniq -w32 -dD | awk '{print $2}' | tail -1)"
filename="$(echo ${duplicateFiles2:1})"
echo "Filename with duplicates: $filename"
echo "Original text content of duplicate file: $(cat $filename)"
# ff="$(pwd)/$filename"
# echo $filename | sed -e 's/\/.*\///g'
line="$(echo $(basename $filename))"
# echo $line
linenumber="$(echo ${line::-4})"
echo "The duplicate line number is: line $linenumber"
fname='loomings.txt'
originalfile="$(echo "$(pwd)/$fname")"
# originalfile="$dir/$fname"
# echo $originalfile
sed -e ''"$linenumber"'d' $originalfile > "loomings-clean.txt"
newfile="$(pwd)/loomings-clean.txt"
diff $originalfile $newfile
# echo "This is the result of the diff command:\n $(diff $originalfile "$dir2/loomings-clean.txt)"

