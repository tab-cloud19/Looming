#!/bin/bash
dir="$(pwd)/linesFolder"
echo "$(ls -laSrH $dir | awk '{print $9, $5}') bytes"
