alias gs="git status -s"

IsChanged(){
  changed="$(git status -s 2> /dev/null)" 
  if [ "$changed" ]; then
    echo "+"
  else
    echo ""
  fi
}

branch=
export PS1="\[\033[1;34m\]lazy@coder \[\033[0;32m\]\w \[\033[0m\][ \[\e[38;5;208m\]\$(git branch 2> /dev/null | grep \* | sed 's/\* //')\[\e[0m\] \$(IsChanged) ] \$ "
