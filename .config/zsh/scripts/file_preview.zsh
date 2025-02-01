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
elif [[ "$kind" = "json" ]]; then
		jq . "$path" | bat -pp --color=always --line-range=:500 -l json
else
		file "$path" | fold -w 80 -s
fi

