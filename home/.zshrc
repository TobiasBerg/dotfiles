# zmodload zsh/zprof
export ZSH=/Users/tbt/.oh-my-zsh

CASE_SENSITIVE="true"

# https://github.com/lukechilds/zsh-nvm
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true

export PURE_CMD_MAX_EXEC_TIME=1

# oh-my-zsh plugins
plugins=(git rbenv)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Setup aliases
source ~/.aliases

# Setup local env vars
source ~/.devenv

export PATH="/usr/local/sbin:$PATH"

export PATH="/Users/tbt/.yarn/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# Setup pure
autoload -U promptinit && promptinit
prompt pure

# Setup Z
source ~/dev/z/z.sh

# rbenv
eval "$(rbenv init -)"

# Golang
export PATH="/usr/local/go/bin:$PATH"
export GOPATH="/Users/tbt/dev/go"
export PATH=$PATH:$GOPATH/bin

# .NET
export PATH="/usr/local/share/dotnet:$PATH"

#NVM
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}

npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}
	
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}
 
node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}
 
npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}

yarn() {
    unset -f yarn
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    yarn "$@"
}
# zprof
