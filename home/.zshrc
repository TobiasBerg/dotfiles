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

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Golang
export PATH="/usr/local/go/bin:$PATH"
export GOPATH="/Users/tbt/dev/go"
export PATH=$PATH:$GOPATH/bin
