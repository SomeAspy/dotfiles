# SomeAspy's DotFiles

## Optimized for

- Arch Linux
- [ThinkPad E14 Gen2 (20TA004MUS)](https://www.cdw.com/product/lenovo-thinkpad-e14-gen-5-14-intel-core-i7-1355u-16-gb-ram-512-g/7520163)
- [HP Envy x360 (dr1012dx)](https://support.hp.com/us-en/document/c06449252)
- [MSI X570 Gaming Edge WiFi](https://www.msi.com/Motherboard/MPG-X570-GAMING-EDGE-WIFI) with [AMD RX 6650XT](https://www.xfxforce.com/shop/xfx-speedster-swft210-amd-radeon-tm-rx-6650-xt-core)

## Notable changes to expected ZSH behavior

- `md` is replaced with `glow` from <https://github.com/charmbracelet/glow>
- `ls` is replaced with `colorls --all --sort-dirs` from <https://github.com/athityakumar/colorls>

## Added Aliases

- `cd..` = `cd ..`
- `restart` = `shutdown -r now`
- `md` = `glow`
- `ls` = `colorls --all --sort-dirs`
- `shutdown` = `shutdown now`
- `code` = `code-insiders`
- `vscode` = `code-insiders`
- `gpgfix` = `export GPG_TTY=$(tty)` - Quick on the go fix for GPG

## File breakdown

```tree
/
|- css (Theme files)
|   |- ytm.css (Youtube Music Theme)
|- docs (Notes)
|   |- betterNetworking.md (Networking Config)
|   |- electronWayland.md (Flags to run electron under)
|   |- plugins.md (Markdown formatted list of ZSH plugins)
|- env (Path files)
|   |- hyprstart (Hyperland start flags)
|- etc (Files that fall under /etc)
|   |- libinput (libinput files)
|   |   |-local-overrides.quirks (touchpad overrides)
|- scripts
|   |- volume (Volume scripts for hotkeys)
|   |   |- down.sh
|   |   |- mute.sh
|   |   |- up.sh
|   |- installPlugins.zsh (Install ZSH plugins)
|- zsh (ZSH configs)
|   |- .p10k.zsh (P10K config)
|   |- .zshrc (ZSH config)
|   |- aliases.zsh (Aliases)
```
