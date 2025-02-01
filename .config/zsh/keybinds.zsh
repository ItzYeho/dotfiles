# Use emacs keybinds as default
bindkey -e

# Bash-like word selection
autoload -U select-word-style
select-word-style bash

# Basic bash-like line navigation & editing
bindkey '^[[1;5C' forward-word                 # Ctrl+Right
bindkey '^[[1;5D' backward-word                # Ctrl+Left
bindkey '^[[1~' beginning-of-line              # Home
bindkey '^[[H' beginning-of-line               # Home (Alternative)
bindkey '^[[4~' end-of-line                    # End
bindkey '^[[F' end-of-line                     # End (Alternative)
bindkey '^[[5~' beginning-of-buffer-or-history # Page Up
bindkey '^[[6~' end-of-buffer-or-history       # Page Down
bindkey '^[[3~' delete-char                    # Del
bindkey '^[[3;5~' kill-word                    # Ctrl+Del
bindkey '^H' backward-kill-word                # Ctrl+Backspace

# Quick navigation - Skip over entire words
bindkey '^[[1;2C' emacs-forward-word           # Shift+Right
bindkey '^[[1;2D' emacs-backward-word          # Shift+Left

# History navigation
bindkey '^[[A' history-search-backward # Up arrow, searches inside commands
bindkey '^[[B' history-search-forward  # Down arrow, searches inside commands
bindkey '^[[1;5A' up-history           # Ctrl+Up, search the history
bindkey '^[[1;5B' down-history         # Ctrl+Down, search the history

# File completer
bindkey '^[[Z' complete-files
