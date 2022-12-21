#!/bin/bash

# create an alias to print each ascii text file in ../art/ using its filename
while IFS= read -r -d '' file; do
    name="$(basename "${file}")"
    alias "${name%".txt"}"="cat ${file}"
done < <(find "$(dirname "${BASH_SOURCE[0]}")/art" -type f -name "*.txt" -print0)

