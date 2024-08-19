#!/bin/bash

path="$1"

if [[ -d $path ]]; then
    ls -A --color "$path"
else
    bat -pp --color=always --line-range=:500 "$path"
fi

