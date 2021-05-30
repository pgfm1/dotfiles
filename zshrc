export ZSH=$HOME/.oh-my-zsh

# Configuration for OhMyZSH theming
# =============================================================================
ZSH_THEME="spaceship"
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_VI_MODE_SHOW=true
export SPACESHIP_BATTERY_SHOW=false
export SPACESHIP_HG_SHOW=false

# Configuration for OhMyZSH plugins
# =============================================================================
plugins=(gitfast vi-mode)

# Configuration for OhMyZSH Vim Mode
# =============================================================================
export VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# Basic environmental setup. Defaults and miscellaneous settings.
# =============================================================================
source $ZSH/oh-my-zsh.sh
export TERMINAL="alacritty"
export LANG=en_US.UTF-8
export EDITOR="nvim"
export CM_DIR=$HOME/clip
export CM_LAUNCHER=rofi
export HISTCONTROL=ignoreboth:erasedups

# Syntax highlighting support for ZSH
# =============================================================================
# Command-line syntax highlighting _must_ be added _last_ with respect to 
# other CLI hooks, as described in the Git repository.
#
# https://github.com/zsh-users/zsh-syntax-highlighting.git
# The highlighting module can be updated via `git pull`
#source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Note: this is breaking vi-mode `vv` to edit the current line. vi-mode working
# properly has higher-value than syntax highlighting at this point.

# Environment variables for key development environments
# =============================================================================
# Some of these, such as JAVA_HOME, might be important to have defined. In most
# cases they're strictly for convenience.
export JAVA_HOME="$HOME/opt/jdk"
export SCALA_HOME="$HOME/opt/scala"
export SBT_HOME="$HOME/opt/sbt"
export GO_HOME="$HOME/opt/go"
export COURSIER_INSTALL="$HOME/.local/share/coursier/bin"
export RACKET_HOME="$HOME/opt/racket"
export CLOJURE_HOME="$HOME/opt/clojure"

# Path definition
# =============================================================================
export PATH="$HOME/.cargo/bin:$PATH" 
export PATH="$HOME/.local/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$SCALA_HOME/bin:$PATH"
export PATH="$COURSIER_INSTALL:$PATH"
export PATH="$GO_HOME/bin:$PATH"
export PATH="$RACKET_HOME/bin:$PATH"
export PATH="$CLOJURE_HOME/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Alias configuration
# =============================================================================
alias ls='exa'
alias vi='nvim'
alias vim='nvim'

# Stateful shell configuration.
# =============================================================================
setopt rmstarsilent # Do not prompt for rm *

# Utility configuration, including auto-added controls.
# =============================================================================
# Note that some utilities automatically add configuration or require a copy
# and paste operation, often to update the path or source some script.
#
# Update via `git pull` in ~/.fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Install the latest LTS release via `n lts`, added by the N installer.
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# Nix package manager, added by the Nix installer.
if [ -e /home/pfm/.nix-profile/etc/profile.d/nix.sh ]; then . /home/pfm/.nix-profile/etc/profile.d/nix.sh; fi
