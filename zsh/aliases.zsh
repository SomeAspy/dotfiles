alias cd..="cd .."
alias code="code-insiders"
alias vscode="code-insiders"
alias gpgfix="export GPG_TTY=$(tty)"

if [ -x "$(command -v colorls)" ]; then
    alias ls="colorls"
    alias la="colorls -al"
fi

if [ -x "$(command -v glow)" ]; then
    alias md="glow"
fi