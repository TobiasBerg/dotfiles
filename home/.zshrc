export ZSH=/Users/tbt/.oh-my-zsh

CASE_SENSITIVE="true"

# oh-my-zsh plugins
plugins=(git heroku osx jira)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

export NVM_DIR="/Users/tbt/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export NODE_ENV=development

# Alias
alias pyserv='python -m SimpleHTTPServer'
alias st='sourcetree'

# Setup pure
autoload -U promptinit && promptinit
prompt pure

ZSH_THEME="pure"

# Setup Z
source ~/dev/z/z.sh

# Setup aliases
source ~/.aliases
