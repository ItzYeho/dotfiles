# History settings
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTFILE="$ZSH_HOME/history"
HISTDUP=erase # Actively erase duplicates from the history file

# History options
setopt extended_history       # Write the history file in the ":start:elapsed;command" format.
setopt inc_append_history     # Immediately append to history after each command
setopt hist_expire_dups_first # Overwrite duplicate entries before unique ones if HISTSIZE limit is reached
setopt hist_ignore_dups       # Don't store an entry if it's a duplicate of the previous one
setopt hist_ignore_all_dups   # Delete old entry if a new entry is a duplicate
setopt hist_save_no_dups      # Disables writing of duplicate entries
setopt hist_find_no_dups      # Do not display a line previously found

# Avoid storing invalid entries
zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }
