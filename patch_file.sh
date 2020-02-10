#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $(basename "$0") <offset> <hex_text> <file_to_patch>"
    exit 1
fi

IFS="
"

file=$3
input_text=$2
offset=$1

echo -n "$input_text" | xxd -r -p -s "0x$offset" - $file
