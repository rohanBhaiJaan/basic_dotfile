alias gs="git status -s"
alias diff="git diff"
alias glog="git log --oneline --graph --all --decorate"
alias habits="cd ~/projects/habit_tracker/"
alias bvim='vim --clean -u ~/my_vim/config/.vimrc --cmd "set runtimepath^=~/my_vim"'
alias tmp="tmux new -s tmpdir -c $TMPDIR"
alias t="tmux"
alias ktmux="tmux kill-server"
alias FZF="openWithTmux"
set -o vi

my_UBUNTU_RUNNING=0
true_var=1

startUbuntu() {
  if [ -f $TMPDIR/ubuntu_running ]; then
    echo "Ubuntu already running!"
  else
    touch $TMPDIR/ubuntu_running
    proot-distro login ubuntu --user Main --shared-tmp --bind /data/data/com.termux/files/home:/home/Main/
    rm -f $TMPDIR/ubuntu_running
  fi
}

openWithTmux(){
  local folder="$(find . -type d -print | sed '/.git/d' | sed '/pack/d' | fzf )"
  local session_name="${folder##*/}"
  session_name=$(echo $session_name | tr . _)
  tmux new -ds $session_name -c $folder "vim ."
  tmux new-window -dt "$session_name:1" -c $folder
  tmux attach -t $session_name
}

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

export PS1="\[\033[1;34m\]lazy@coder \[\033[0;32m\]\w \[\033[0m\][ \[\e[38;5;208m\]\$(getBranch)\[\e[0m\] \$(IsChanged) ]\n\$ "
