export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

plugins=(vi-mode gitfast)

source $ZSH/oh-my-zsh.sh
export TERMINAL="alacritty"
export LANG=en_US.UTF-8
export EDITOR="nvim"
export CM_DIR=$HOME/clip
export CM_LAUNCHER=rofi

source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Configuration for Vim Mode!
bindkey -v
bindkey '^p' up-history
bindkey '^n' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
export KEYTIMEOUT=1

# Environment Variable Setup
export JAVA_HOME="$HOME/opt/jdk"
export SCALA_HOME="$HOME/opt/scala"
export SBT_HOME="$HOME/opt/sbt"
export GO_HOME="$HOME/opt/go"
export COURSIER_INSTALL="$HOME/.local/share/coursier/bin"

# Path Setup
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$SCALA_HOME/bin:$PATH"
export PATH="$COURSIER_INSTALL:$PATH"
export PATH="$GO_HOME/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Aliases
alias ls='exa'
alias vi='nvim'
alias vim='nvim'

# Make 'rm' not prompt.
setopt rmstarsilent

# Configure Spaceship
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_VI_MODE_SHOW=false
export SPACESHIP_BATTERY_SHOW=false

# History
export HISTCONTROL=ignoreboth:erasedups

# FZF Configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# n Configuration (JavaScript)
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

if [ -e /home/pfm/.nix-profile/etc/profile.d/nix.sh ]; then . /home/pfm/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
