
# requires fn.bash:in_git_repo
function prompt_command {
  git_info="";
  if in_git_repo ; then
    git_info=" (`git branch | sed s/*\ //`)";
  fi
  PS1=" \$PROMPT_SYMBOL \W\$git_info: ";
}
[ -z "$PS1" ] && return
setenv PROMPT_COMMAND prompt_command
