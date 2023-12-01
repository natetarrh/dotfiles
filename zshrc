function git_prompt_info {
  local branch dirty
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [[ -z $branch ]]; then
    return 0
  fi
  git diff --no-ext-diff --quiet --exit-code 2>/dev/null
  if [[ $? -ne 0 ]]; then
    dirty="!"
  fi
  echo -e "on %F{magenta}$branch%f%F{green}$dirty%f"
}

function init_or_attach_tmux_session {
  local session_name=$(basename "$PWD")
  if tmux has-session -t $session_name 2> /dev/null; then
    tmux attach-session -t $session_name
  else
    tmux new-session -s $session_name "vim" ';' new-window ';' select-window -t 1
  fi
}

PROMPT='
%F{magenta}%n%f at %F{yellow}%m%f in %F{green}%~%f $(git_prompt_info)%f
$ '

alias d='git diff'
alias ls='ls --color'
alias s='git status'
alias t='init_or_attach_tmux_session'

bindkey -e

export EDITOR=vim
export FZF_DEFAULT_COMMAND='rg --files'
export HISTSIZE=1000000
export PATH="$PATH:$HOME/.rvm/bin"
export SAVEHIST=1000000

setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt PROMPT_SUBST

[ -f ~/Developer/dotfiles/base16-fzf/bash/base16-mocha.config ] && \
  source ~/Developer/dotfiles/base16-fzf/bash/base16-mocha.config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
