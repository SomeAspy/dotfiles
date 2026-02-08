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

# Addons
source $ZDOTDIR/addons.zsh
