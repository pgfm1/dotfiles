export ZSH=/home/eidolon/.oh-my-zsh

ZSH_THEME="spaceship"

plugins=(vi-mode gitfast)

# Configuration for Vim Mode!
# This enables command line behavior that mimics Vim.
bindkey -v
bindkey '^p' up-history
bindkey '^n' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
export KEYTIMEOUT=1

# Configure everything for JVM development -- Java, Scala, Clojure, build tools, etc.
export JAVA_HOME=/home/eidolon/opt/jdk
export JRE_HOME=/home/eidolon/opt/jdk/jre
export SBT_HOME=/home/eidolon/opt/sbt
export GRADLE_HOME=/home/eidolon/opt/gradle
export MAVEN_HOME=/home/eidolon/opt/maven
export M2_HOME=/home/eidolon/opt/maven
export SCALA_HOME=/home/eidolon/opt/scala

# Configure my default paths - these should include custom installs and my home bin.
export PATH="/home/eidolon/.cargo/bin:$PATH"
export PATH=$GRADLE_HOME/bin:$PATH
export PATH=$SBT_HOME/bin:$PATH
export PATH=$M2_HOME/bin/:$PATH
export PATH=$SCALA_HOME/bin:$PATH
export PATH=$JAVA_HOME/bin:$PATH
export PATH=/home/eidolon/.linkerd2/bin:$PATH
export PATH="/home/eidolon/bin:$PATH"

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR="vim"

# Bring these back if not using Vim mode.
#bindkey "^f" forward-word
#bindkey "^b" backward-word

# Aliases
alias ls='exa' # exa is a rust-based ls replacement
alias vi='nvim' # use neovim by default
alias vim='nvim'

# Make 'rm' not prompt.
setopt rmstarsilent

# Configure Spaceship
export SPACESHIP_RUBY_SHOW=false
export SPACESHIP_NODE_SHOW=false
export SPACESHIP_VENV_SHOW=false
export SPACESHIP_KUBECONTEXT_SHOW=false
export SPACESHIP_BATTERY_SHOW=false

# History
export HISTCONTROL=ignoreboth:erasedups

# FZF Configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source "/home/eidolon/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# eps - quick 'ps' wrapper that greps and retains headers
function eps {
    ps -ef | egrep "$1|PID"
}

# Add RVM to PATH for scripting. 
source ~/.rvm/scripts/rvm
export PATH="$PATH:$HOME/.rvm/bin"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

# Haskell
source /home/eidolon/.ghcup/env

source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
