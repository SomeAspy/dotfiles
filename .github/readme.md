# SomeAspy's DotFiles

> A true Linux moment

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

## What's inside

- [Aliases](/zsh/aliases.zsh)
- [ZSH Configs](/zsh)
- [Notes](/docs)
- ~~[Quirks for `Elan Touchpad`](/etc/libinput/local-overrides.quirks)~~ [merged into libinput](https://gitlab.freedesktop.org/libinput/libinput/-/commit/5abe45cd497557c6b3c3cdd4d40420f21416160d)

```zsh
git clone https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins "$ZSH_CUSTOM/plugins/autoupdate"
```

## Notable changes to expected ZSH behavior

- `md` is replaced with `glow` from <https://github.com/charmbracelet/glow> (if installed)
- `grep` has `--color=auto` appended

## Added Aliases

- `cd..` = `cd ..`
- `md` = `glow`
- `grep` = `grep --color=auto`

## Expected Applications

- [Glow](https://github.com/charmbracelet/glow)
- [NVM](https://github.com/nvm-sh/nvm)
- [SDKMAN!](https://sdkman.io/)

## ZSH Plugins

- ### [P10k](https://github.com/romkatv/powerlevel10k)

- ### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

- ### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

- ### [autoupdate-zsh-plugin](https://github.com/tamcore/autoupdate-oh-my-zsh-plugins)
