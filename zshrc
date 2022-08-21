setopt PROMPT_SUBST

function git_prompt_info {
  local branch dirty
  branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"
  if [ -z "$branch" ]; then
    return 0
  fi
  git diff --no-ext-diff --quiet --exit-code 2>/dev/null
  if [ $? -ne 0 ]; then
    dirty="!"
  fi
  echo -e "on %F{magenta}$branch%f%F{green}$dirty%f"
}

PROMPT='
%F{magenta}%n%f at %F{yellow}%m%f in %F{green}%~%f $(git_prompt_info)%f
$ '

alias d='git diff'
alias ls='ls --color'
alias s='git status'

export EDITOR=vim
export PATH=/home/pi/.local/share/gem/ruby/2.7.0/bin:$PATH
export PATH=`gem environment gemdir`/bin:$PATH
