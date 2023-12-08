alias cd..="cd .."
alias code="code-insiders"
alias vscode="code-insiders"
alias gpgfix="export GPG_TTY=$(tty)"
alias grep='grep --color=auto'


if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls -a --gs"
fi

if [ -x "$(command -v glow)" ]; then
    alias md="glow"
fi