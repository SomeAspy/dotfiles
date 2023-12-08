# SomeAspy's DotFiles

> A true Linux moment

## Optimized & Tested Environments

- Arch Linux
- Debian latest
- [ThinkPad E14 Gen2 (20TA004MUS)](https://www.cdw.com/product/lenovo-thinkpad-e14-gen-5-14-intel-core-i7-1355u-16-gb-ram-512-g/7520163)
- [HP Envy x360 (dr1012dx)](https://support.hp.com/us-en/document/c06449252)
- [MSI X570 Gaming Edge WiFi](https://www.msi.com/Motherboard/MPG-X570-GAMING-EDGE-WIFI) with [AMD RX 6650XT](https://www.xfxforce.com/shop/xfx-speedster-swft210-amd-radeon-tm-rx-6650-xt-core)
- [Dell R910](https://i.dell.com/sites/content/shared-content/data-sheets/en/Documents/R910-SpecSheet.pdf)

## What's inside

- [Aliases](/zsh/aliases.zsh)
- [ZSH Configs](/zsh)
- [Themes](/css)
- [Notes](/docs)
- [Quirks for `Elan Touchpad`](/etc/libinput/local-overrides.quirks)

Quick install with [`/install.sh`](/install.sh) (Untested as of writing)

## Notable changes to expected ZSH behavior

- `md` is replaced with `glow` from <https://github.com/charmbracelet/glow>
- `ls` is replaced with `colorls --all --sort-dirs` from <https://github.com/athityakumar/colorls>
- `grep` has `--color=auto` appended

## Added Aliases

- `cd..` = `cd ..`
- `restart` = `shutdown -r now`
- `md` = `glow`
- `ls` = `colorls -a --gs`
- `shutdown` = `shutdown now`
- `code` = `code-insiders`
- `vscode` = `code-insiders`
- `gpgfix` = `export GPG_TTY=$(tty)` - Quick on the go fix for GPG

## ZSH Plugins

- ### [P10k](https://github.com/romkatv/powerlevel10k)

- ### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

- ### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

- ### [autoupdate-zsh-plugin](https://github.com/tamcore/autoupdate-oh-my-zsh-plugins)
