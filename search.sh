#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $(basename "$0") <search text> <file>"
    exit 1
fi

IFS="
"
search_text=$1
file=$2

out=$(xxd $2 | grep -i $1 -A1 -B1)

echo "00000000: 0001 0203 0405 0607 0809 0a0b 0c0d 0e0f"
echo "================================================="
echo "$out" 
