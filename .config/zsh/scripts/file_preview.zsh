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
    bat -pp --color=always --line-range=:500 "$path" --wrap character --terminal-width 90
elif [[ "$kind" = "json" ]]; then
		jq . "$path" | bat -pp --color=always --line-range=:500 -l json --wrap character --terminal-width 90
else
		file "$path" | fold -w 90 -s
fi

