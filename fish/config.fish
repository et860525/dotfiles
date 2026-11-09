# package
zoxide init fish | source

# aliases
alias l "eza --icons -lg"
alias ll "eza --icons -alg"
alias vim "nvim"
alias vi "nvim"

# set default editor
set -gx EDITOR vim
set -gx TERM xterm-256color

# Android Dev
set -Ux ANDROID_HOME /opt/homebrew/share/android-commandlinetools
set -Ux JAVA_HOME /opt/homebrew/opt/openjdk@17
fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin $ANDROID_HOME/platform-tools
