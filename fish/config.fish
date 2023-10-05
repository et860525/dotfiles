# aliases
alias docker "sudo docker"
alias l "exa -lg --icons"
alias ll "exa -alg --icons"
command -qv nvim && alias vim nvim

# set default editor
set -gx EDITOR vim

set -gx TERM xterm-256color
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# cargo
set PATH $HOME/.cargo/bin $PATH

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
