# File completion fallback
zle -C complete-files complete-word _generic
zstyle ':completion:complete-files:*' completer _files

# Completion engine settings
zstyle ':completion:*' completer _oldlist _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'

# Color file completions like LS colors
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Use FZF for completions
zstyle ':completion:*' menu select

# FZF completion previews
FZF_LS_PREVIEW='ls --color $realpath'
FZF_BAT_PREVIEW='bat -pp --color=always --line-range=:500 $realpath'

# ls & cd
zstyle ':fzf-tab:complete:ls:*' fzf-preview $FZF_LS_PREVIEW
zstyle ':fzf-tab:complete:cd:*' fzf-preview $FZF_LS_PREVIEW
zstyle ':fzf-tab:complete:j:*' fzf-preview $FZF_LS_PREVIEW

# cat & bat
zstyle ':fzf-tab:complete:cat:*' fzf-preview $FZF_BAT_PREVIEW
zstyle ':fzf-tab:complete:bat:*' fzf-preview $FZF_BAT_PREVIEW

# editors
zstyle ':fzf-tab:complete:nano:*' fzf-preview $FZF_BAT_PREVIEW
zstyle ':fzf-tab:complete:vim:*' fzf-preview $FZF_BAT_PREVIEW
zstyle ':fzf-tab:complete:nvim:*' fzf-preview $FZF_BAT_PREVIEW

# Load completions engine
autoload -Uz compinit
compinit -d ${ZSH_CACHE}/zcompdump
zinit cdreplay -q

# Misc
setopt extendedglob

