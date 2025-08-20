alias gs="git status -s"
alias diff="git diff"
alias habits="cd ~/projects/habit_tracker/"
alias bvim="vim --clean -u ~/my_vim/.vimrc"

set -o vi

getBranch(){
  local branch="$(git branch 2> /dev/null | grep \* | sed 's/\* //')"
  echo $branch
}

IsChanged(){
  changed="$(git status -s 2> /dev/null)" 
  if [ "$changed" ]; then
    echo "+"
  else
    echo ""
  fi
}

export PS1="\[\033[1;34m\]lazy@coder \[\033[0;32m\]\w \[\033[0m\][ \[\e[38;5;208m\]\$(getBranch)\[\e[0m\] \$(IsChanged) ] \$ "
