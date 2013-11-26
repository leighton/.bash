
# enable color support of ls and also derived aliases
if [ "$TERM" != "dumb" ]; then
    alias ls='ls -G'
    alias ll='ls -l'
    alias all='ls -al'
    alias emacs_tidy="find . -type f -name "*~" | xargs rm"
    alias grep='grep --color=auto'
fi

