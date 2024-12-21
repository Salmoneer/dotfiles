if status is-interactive && test -z $TMUX
    tmux attach-session || tmux
    kill -9 $fish_pid
end

set fish_greeting

set -ga PATH ~/.local/bin

set -g ZVM_INSTALL $HOME/.zvm/self
set -ga PATH $HOME/.zvm/bin
set -ga PATH $ZVM_INSTALL

set -gx VISUAL nvim
set -gx EDITOR nvim

set -gx LS_COLORS (vivid generate catppuccin-macchiato)

source ~/.config/fish/alias.fish

oh-my-posh init fish --config ~/.config/omp/catppuccin.toml | source
zoxide init fish --cmd cd | source
