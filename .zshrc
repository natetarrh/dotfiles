# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="nate"

export SVN_EDITOR=/usr/bin/vim
source $ZSH/oh-my-zsh.sh

PATH="/usr/local/sbin:$PATH"
PATH=$PATH:$HOME/.rvm/bin
PATH="/usr/local/heroku/bin:$PATH"
PATH=$HOME/Library/Haskell/bin:$PATH
