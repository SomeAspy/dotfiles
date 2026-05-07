ZDOTDIR=$HOME/dotfiles

export PATH="$HOME/.local/bin:$PATH"
export FZF_DEFAULT_OPTS='--height 10%'

PROMPT='%K{60}%B%F{254} %n@%m %b%F{60}%K{67}%F{255} %B%20<...<%~ %k%F{67}%f%k '

# Sane History
HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt APPEND_HISTORY SHARE_HISTORY HIST_IGNORE_ALL_DUPS

# Completions
eval "$(dircolors -b)"
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Antidote plugin loader
source '/usr/share/zsh-antidote/antidote.zsh'
antidote load $ZDOTDIR/.zsh_plugins.txt

# Completions
bindkey '^[[A' fzf_history_search
autoload -Uz compinit
compinit

# Bitwarden SSH agent (rbw)
if command -v rbw &>/dev/null
then
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
