#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $(basename "$0") <input text>"
    exit 1
fi

IFS="
"
input_text=$1

echo "input text: $input_text"
echo "len: $(echo -n $input_text|wc -c)"
output_text=$(echo -n $input_text| xxd -p)
echo "output text: $output_text"
