# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nate"

export SVN_EDITOR=/usr/bin/vim
source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

PATH="/usr/local/sbin:$PATH"
PATH=$PATH:$HOME/.rvm/bin
PATH="/usr/local/heroku/bin:$PATH"
PATH=$HOME/Library/Haskell/bin:$PATH
