#!/bin/bash
dir="$(pwd)/linesFolder"
echo $dir
for file in "$dir"/*; do
  # echo "${file##*/}"
  echo "${file%.*}"
  md5sum $file > "${file%.*}.hash"
  # echo -e "md5sum $file" >>"$dir/filenames/$n.txt"
done

# #!/bin/bash
# filename='sample1.txt'
# dir=$(pwd)
# mkdir linesFolder
# n=1
# while read -r line || [ -n "$line" ]; do
# # reading each line
# echo "Line No. $n : $line"
# echo $n
# echo -e "$line\n" >>"$dir/filenames/$n.txt"
# n=$((n+1))
# done < $filename