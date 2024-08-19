# Set directory variables
ZSH_CACHE="${XDG_CACHE_HOME:-${HOME}/.cache}"
ZSH_CONFIG="${XDG_CONFIG_HOME:-${HOME}/.config}/zsh"
ZSH_SCRIPTS="${ZSH_CONFIG}/scripts"
ZSH_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zsh"
ZINIT_HOME="${ZSH_HOME}/zinit"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${ZSH_CACHE}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${ZSH_CACHE}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source configuration files
source "${ZSH_CONFIG}/plugins.zsh"     # zinit plugins
source "${ZSH_CONFIG}/p10k.zsh"        # Powerlevel10k, `p10k configure` to modify
source "${ZSH_CONFIG}/keybinds.zsh"    # Keybinds
source "${ZSH_CONFIG}/completions.zsh" # Completions engine
source "${ZSH_CONFIG}/history.zsh"     # History related settings
source "${ZSH_CONFIG}/aliases.zsh"     # Command aliases
source "${ZSH_CONFIG}/misc.zsh"        # Miscellaneous configs

# Shell third-party integrations
eval "$(fzf --zsh)"
eval "$(zoxide init zsh --cmd j)"

