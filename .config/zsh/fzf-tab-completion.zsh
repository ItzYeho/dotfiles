# FZF completion settings
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':fzf-tab:*' fzf-min-height 50
zstyle ':fzf-tab:*' switch-group '<' '>'

# Good starting point
zinit light Freed-Wu/fzf-tab-source

# Previewers
FILE_PREVIEW="$ZSH_SCRIPTS/file_preview.zsh \$realpath"

# Git
zstyle ':fzf-tab:complete:git-(add|diff|restore):*' fzf-preview \
	'git diff $word | delta'
zstyle ':fzf-tab:complete:git-log:*' fzf-preview \
	'git log --color=always $word'
zstyle ':fzf-tab:complete:git-help:*' fzf-preview \
	'git help $word | bat -plman --color=always'
zstyle ':fzf-tab:complete:git-show:*' fzf-preview \
	'case "$group" in
	"commit tag") git show --color=always $word ;;
	*) git show --color=always $word | delta ;;
	esac'
zstyle ':fzf-tab:complete:git-checkout:*' fzf-preview \
	'case "$group" in
	"modified file") git diff $word | delta ;;
	"recent commit object name") git show --color=always $word | delta ;;
	*) git log --color=always $word ;;
	esac'

# Everything else
zstyle ':fzf-tab:complete:*:*' fzf-preview $FILE_PREVIEW
