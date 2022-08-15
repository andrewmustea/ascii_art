#!/bin/bash

ASCII_ART="$(cd "$(dirname "${BASH_SOURCE[0]}")" > /dev/null && pwd)/art"

for artfile in $(command ls "$ASCII_ART"/*.txt); do
    name="$(basename "$artfile")"
    alias "${name%".txt"}"="cat $artfile"
done

