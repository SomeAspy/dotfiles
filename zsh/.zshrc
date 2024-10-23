if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# oh-my-zsh path
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode auto # update automatically without asking
zstyle ':omz:update' verbose silent # only errors

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(zsh-syntax-highlighting zsh-autosuggestions autoupdate)

ZSH_CUSTOM_AUTOUPDATE_NUM_WORKERS=8
ZSH_CUSTOM_AUTOUPDATE_QUIET=true

source $ZSH/oh-my-zsh.sh

source "$HOME/dotfiles/zsh/.p10k.zsh"
source "$HOME/dotfiles/zsh/aliases.zsh" # ALIASES

path+="$HOME/.local/bin"
path+="/usr/share/applications"

export PATH

#SECTION - Environment Variables 

export GPG_TTY=$(tty)

#SECTION End (Programs will probably append to here)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
