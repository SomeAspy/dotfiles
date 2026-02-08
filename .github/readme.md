# SomeAspy's DotFiles

> A true Linux moment

## Install

The best way to install is to clone this repo to your home directory and **soft** (`ln -s`) link `$HOME/.zshrc` to `dotfiles/.zshrc`.

## Optimized & Tested Environments

- Arch Linux
- Debian latest
- Ubuntu latest
- [ThinkPad E14 Gen2 (20TA004MUS)](https://www.cdw.com/product/lenovo-thinkpad-e14-gen-5-14-intel-core-i7-1355u-16-gb-ram-512-g/7520163)
- [HP Envy x360 (dr1012dx)](https://support.hp.com/us-en/document/c06449252)
- [MSI X570 Gaming Edge WiFi](https://www.msi.com/Motherboard/MPG-X570-GAMING-EDGE-WIFI) with [AMD RX 6650XT](https://www.xfxforce.com/shop/xfx-speedster-swft210-amd-radeon-tm-rx-6650-xt-core)
- [Dell R910](https://i.dell.com/sites/content/shared-content/data-sheets/en/Documents/R910-SpecSheet.pdf)
- [Dell R430](https://i.dell.com/sites/csdocuments/Shared-Content_data-Sheets_Documents/en/us/Dell-PowerEdge-R430-Spec-Sheet.pdf)
- [iPhone 8](https://support.apple.com/en-us/111976) on iOS 16.7.8
- [M1 MacBook Pro 2020](https://support.apple.com/en-us/111893) on MacOS Latest via [iTerm2](https://iterm2.com/)
- Asus B650 Edge WiFi with AMD RX 9070
- ThinkPad X1 Carbon Gen 9

## What's inside

- ~~[Quirks for `Elan Touchpad`](/etc/libinput/local-overrides.quirks)~~ [merged into libinput](https://gitlab.freedesktop.org/libinput/libinput/-/commit/5abe45cd497557c6b3c3cdd4d40420f21416160d)
- Basic theming I spent like an hour on

## Notable changes to expected ZSH behavior

- If Bitwarden SSH agent is detected, it is used as the SSH agent
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
