# Instant Prompt (Keep at top)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antidote plugin loader
source '/usr/share/zsh-antidote/antidote.zsh'
antidote load $HOME/dotfiles/.zsh_plugins.txt

# SSH Auth Backend
if [ -S "$HOME/.bitwarden-ssh-agent.sock" ]; then
  export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"
fi


# P10k theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
