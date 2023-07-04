# aliases
alias docker "sudo docker"
alias l "exa -lg --icons"
alias ll "exa -alg --icons"
alias vim "nvim"

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# set cargo path
set PATH $HOME/.cargo/bin $PATH

# pnpm
set -gx PNPM_HOME "/home/et860525/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
