alias cd..="cd .."

alias grep='grep --color=auto'

if [ -x "$(command -v glow)" ]; then
    alias md="glow"
fi
