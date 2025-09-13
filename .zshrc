# Instant Prompt (Keep at top)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antidote plugin loader
source '/usr/share/zsh-antidote/antidote.zsh'
antidote load $HOME/dotfiles/.zsh_plugins.txt

# Load Completions
autoload -U compinit
compinit

SSH_AUTH_SOCK=$HOME/.bitwarden-ssh-agent.sock

# P10k theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ZSH History Config
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# SSH Auth Backend
if [ -f $HOME/.bitwarden-ssh-agent.sock ]; then
  SSH_AUTH_SOCK=$HOME/.bitwarden-ssh-agent.sock
fi