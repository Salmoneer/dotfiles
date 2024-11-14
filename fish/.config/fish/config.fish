if test -z $TMUX
    tmux attach-session || tmux
end

set fish_greeting

set -gx VISUAL nvim
set -gx EDITOR nvim

set -gx LS_COLORS (vivid generate catppuccin-macchiato)

oh-my-posh init fish --config ~/.config/omp/catppuccin.toml | source
zoxide init fish | source
