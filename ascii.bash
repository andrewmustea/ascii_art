#!/bin/bash

ASCII_ART="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )/art"

if [ -f "$ASCII_ART/jesser.txt" ]; then
    weneedtocook() {
        cat "$ASCII_ART/jesser.txt"
    }
fi
