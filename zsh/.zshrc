if [ -z $TMUX ]; then
    tmux attach-session || tmux
    exit
fi

# Setup zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Environment variables
export VISUAL=nvim
export EDITOR=nvim

# Configuration
# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Zsh builtin settings
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*" menu no
zstyle ":completion:*:descriptions" format "[%d]"
zstyle ':completion:*:git-checkout:*' sort false

# Keybindings
bindkey -e
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char
bindkey "^H" backward-delete-word
bindkey "^[[3;5~" delete-word

# Plugin configuration
source "${HOME}/.config/zsh/catppuccin-syntax-highlighting.zsh"
source "${HOME}/.config/zsh/catppuccin-fzf.zsh"
export LS_COLORS="$(vivid generate catppuccin-macchiato)"

# Load plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load completions
autoload -U compinit && compinit

# Load shell integrations
eval "$(oh-my-posh init zsh --config ~/.config/omp/catppuccin.toml)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh --cmd cd)"

# Aliases
alias ls="ls --color"
