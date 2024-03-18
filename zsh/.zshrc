export SHELL=/usr/bin/zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode disabled  # disabled, auto or reminder
# zstyle ':omz:update' frequency 7 # Auto-update frequency, in days

# Plugins (found in $ZSH/plugins)
plugins=(
    git
    zsh-autocomplete
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8

export EDITOR='nvim'
export VISUAL='nvim'

# Aliases

[[ -z "$TMUX" ]] && { tmux attach || exec tmux new-session && exit;}

eval "$(zoxide init --cmd cd zsh)"
