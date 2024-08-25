#!/bin/bash

path="$@"
mime=$(file -bL --mime-type "$path")
category=${mime%%/*}
kind=${mime##*/}

if [[ -d "$path" ]]; then
    eza --git -a1 --color=always --icons "$path"
elif [[ "$category" = "image" ]]; then
    chafa "$path"
    exiftool "$path"
elif [[ "$category" = "text" ]]; then
    bat -pp --color=always --line-range=:500 "$path"
fi

