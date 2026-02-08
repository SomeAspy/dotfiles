DOTDIR=$HOME/dotfiles

PROMPT='%K{60}%B%F{254} %n@%m %b%F{60}%K{67}%F{255} %B%20<...<%~ %k%F{67}%f '

source $DOTDIR/omz-behaviors.zsh

# Antidote plugin loader
if [[ ! -f $zsh_plugins.zsh ]] || [[ $zsh_plugins_txt -nt $zsh_plugins.zsh ]]; then
  antidote bundle < $zsh_plugins_txt > $zsh_plugins.zsh
fi
source $zsh_plugins.zsh

# History ops
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# SSH Auth Backend
if [ -S "$HOME/.bitwarden-ssh-agent.sock" ]; then
  export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"
fi