# Bitwarden SSH agent
if [ -S "$HOME/.bitwarden-ssh-agent.sock" ]; then
  export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"
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