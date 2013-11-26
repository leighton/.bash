
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

