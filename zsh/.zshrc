# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"


zstyle ':omz:update' mode auto      # update automatically without asking

zstyle ':omz:update' frequency 1

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-syntax-highlighting zsh-autosuggestions autoupdate)
export UPDATE_ZSH_DAYS=1
ZSH_CUSTOM_AUTOUPDATE_NUM_WORKERS=8

source $ZSH/oh-my-zsh.sh

ZSH_DOTFILES="$( dirname "$( readlink -f "$0" )" )"

source "$ZSH_DOTFILES/.p10k.zsh"
source "$ZSH_DOTFILES/aliases.zsh" # ALIASES

path+="$HOME/.local/bin"
path+="$HOME/.local/share/gem/ruby/3.0.0/bin"
path+="/usr/share/applications"

export PATH

# ENVIROMENT VARIABLES

export GPG_TTY=$(tty)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
