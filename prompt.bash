
# requires fn.bash:in_git_repo
function prompt_command {
  git_preamble=":";
  if in_git_repo ; then
    git_dir=$(basename `git rev-parse --show-toplevel`)
    git_info=$(git branch | grep \* | sed s/*\ //);
    git_preamble=" ($git_dir:$git_info)"
  fi
  PS1=" \$PROMPT_SYMBOL \W\$git_preamble ";
}
[ -z "$PS1" ] && return
setenv PROMPT_COMMAND prompt_command
