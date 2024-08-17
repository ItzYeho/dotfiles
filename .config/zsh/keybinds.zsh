# Use emacs keybinds as default
bindkey -e

# Basic bash-like line navigation & editing
bindkey '^[[1;5C' forward-word                 # Ctrl+Right
bindkey '^[[1;5D' backward-word                # Ctrl+Left
bindkey '^[[1;3C' forward-word                 # Alt+Left
bindkey '^[[1;3D' backward-word                # Alt+Left
bindkey '^[[H' beginning-of-line               # Home
bindkey '^[[F' end-of-line                     # End
bindkey '^[[5~' beginning-of-buffer-or-history # Page Up
bindkey '^[[6~' end-of-buffer-or-history       # Page Down
bindkey '^[[3~' delete-char                    # Del
bindkey '5~' kill-word                         # Ctrl+Del
bindkey '^H' backward-kill-word                # Ctrl+Backspace

# History navigation
bindkey '^[[A' history-search-backward # Up arrow, searches inside commands
bindkey '^[[B' history-search-forward  # Down arrow, searches inside commands
bindkey '^[[1;5A' up-history           # Ctrl+Up, search the history
bindkey '^[[1;5B' down-history         # Ctrl+Down, search the history

