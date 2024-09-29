# Files completer fallback
# TODO: Make it work with FZF-TAB previews
function _complete_file_fallback() {
    local ret=1

    # Try normal ZSH completion
    _complete

    # If we got any matches, continue
    if [[ $compstate[nmatches] -gt 0 ]]; then
      ret=0

    # We didn't get any matches, use _files
    else
      _files
      ret=$?
    fi

    return $ret
}

# File completion fallback
zle -C complete-files complete-word _generic
zstyle ':completion:complete-files:*' completer _files

# Completion engine settings
zstyle ':completion:*' completer _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' menu no

# Color file completions like LS colors
zinit snippet https://raw.githubusercontent.com/trapd00r/LS_COLORS/master/lscolors.sh
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Use FZF for completion
source "$ZSH_CONFIG/fzf-tab-completion.zsh"

# Misc
setopt extendedglob

# Load completions engine
autoload -Uz compinit
compinit -d ${ZSH_CACHE}/zcompdump
zinit cdreplay -q
