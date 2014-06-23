# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nate"

source $ZSH/oh-my-zsh.sh

alias sudo='sudo '
alias redo='`\history -n | tail -n1`'
alias please='sudo redo'

alias tmux='tmux -2'
alias ssh='TERM=xterm ssh'

bindkey -v
bindkey -M viins 'jj' vi-cmd-mode
bindkey -M vicmd '?' history-incremental-search-backward
bindkey '\eOA' history-beginning-search-backward
bindkey '\e[A' history-beginning-search-backward
bindkey '\eOB' history-beginning-search-forward
bindkey '\e[B' history-beginning-search-forward


PATH=/usr/local/sbin:$PATH
PATH=/usr/local/heroku/bin:$PATH
PATH=$HOME/Library/Haskell/bin:$PATH
PATH=$HOME/.cabal/bin:$PATH
PATH=$HOME/Library/Python/2.7/bin:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
