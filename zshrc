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
export FZF_DEFAULT_COMMAND='rg --files'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

source "$HOME/dotfiles/base16-fzf/bash/base16-mocha.config"
# source /path/to/fzf/examples/completion.zsh
# source /path/to/fzf/examples/key-bindings.zsh
