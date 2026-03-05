DOTFILES_ROOT="$HOME/Developer/dotfiles"

# completion
autoload -U compinit
compinit

# keybindings
bindkey -e

# history
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY
export HISTSIZE=1000000
export SAVEHIST=1000000

# other defaults
export EDITOR=vim
export PATH="$HOME/.local/bin:$PATH:$HOME/.rvm/bin"

# prompt
source "$DOTFILES_ROOT/git-prompt.sh"
setopt PROMPT_SUBST
PROMPT='
%F{magenta}%~%f%B%F{cyan}$(__git_ps1 " %s" 2> /dev/null)%b%f
$ '
export GIT_PS1_SHOWDIRTYSTATE=true

# shortcuts
function init_or_attach_tmux_session {
  local session_name=$(basename "$PWD")
  if tmux has-session -t "$session_name" 2> /dev/null; then
    tmux attach-session -t "$session_name"
  else
    tmux new-session -s "$session_name" "vim" ';' new-window ';' select-window -t 1
  fi
}

alias d='git diff'
alias ls='ls --color'
alias s='git status'
alias t='init_or_attach_tmux_session'

# fzf
source "$DOTFILES_ROOT/base16-fzf/bash/base16-mocha.config"
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='rg --files'
