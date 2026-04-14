# SomeAspy's DotFiles

> Linux moment

## Install

The best way to install is to clone this repo to your home directory and **soft** (`ln -s`) link `$HOME/.zshrc` to `dotfiles/.zshrc`.

## Optimized & Tested Environments

- Arch Linux
- Debian latest
- Ubuntu latest

## What's inside

- ~~[Quirks for `Elan Touchpad`](/etc/libinput/local-overrides.quirks)~~ [merged into libinput](https://gitlab.freedesktop.org/libinput/libinput/-/commit/5abe45cd497557c6b3c3cdd4d40420f21416160d)
- Basic theming I spent like an hour on

## Notable changes to expected ZSH behavior

- If [rbw](https://github.com/doy/rbw) SSH agent is detected, it is used as the SSH agent
- `ZDOTDIR` = `$HOME/dotfiles`
- `$HOME/local/bin` is added to `PATH`
- Some OMZ defaults are implemented
        - `.zsh_history` file handling
        - History Search
        - Colors

## Added Aliases

Added conditionally if the program exists

- [bat](https://github.com/sharkdp/bat): `cat` -> `batcat -pP` or `bat -pP`
- [ripgrep](https://github.com/BurntSushi/ripgrep): `grep` -> `rg`
- [eza](https://github.com/eza-community/eza): `ls` -> `eza`
- [eza](https://github.com/eza-community/eza): `tree` -> `eza --tree`

## Required Applications

- [Antidote](https://github.com/mattmc3/antidote)
- [Git](https://git-scm.com/) (for Antidote)

## Antidote Plugins

See [./zsh_plugins.txt](../.zsh_plugins.txt)

- ### [zsh-users/zsh-completions](https://github.com/zsh-users/zsh-completions)

- ### [Aloxaf/fzf-tab](https://github.com/Aloxaf/fzf-tab)

- ### [joshskidmore/zsh-fzf-history-search](https://github.com/joshskidmore/zsh-fzf-history-search)

- ### [zsh-users/zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
