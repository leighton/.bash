
function setenv {
    export $1=$2;
}

function unsetenv {
    unset $1;
}

function in_git_repo {
  if [ `git rev-parse --git-dir 2> /dev/null` ]; then
    return 0;
  else
    return 1;
  fi
}

function prompt_command {
  git_info="";
  if in_git_repo ; then
    git_info=" (`git branch | sed s/*\ //`)";
  fi
  PS1=" \$PROMPT_SYMBOL \W\$git_info: ";
}
