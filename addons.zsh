# Bitwarden SSH agent (rbw)
if [ -S "$XDG_RUNTIME_DIR/rbw/ssh-agent-socket" ]; then
    export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/rbw/ssh-agent-socket"
fi

# bat
if command -v batcat > /dev/null; then
    alias cat="batcat -pP"
elif command -v bat > /dev/null; then
    alias cat="bat -pP"
fi

# ripgrep
if command -v rg > /dev/null; then
    alias grep=rg
fi

# eza
if command -v eza > /dev/null; then
    alias ls=eza
    alias tree="eza --tree"
fi