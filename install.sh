#!/bin/bash

#Set ZSH files to this repository
echo "#/bin/zsh

source \$HOME/dotfiles/zsh/.zshrc
" > "$HOME/.test"

source "$HOME/.zshrc"

# Install Oh My ZSH Plugins
git clone https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins "$ZSH_CUSTOM/plugins/autoupdate"

# If we are on an affected ThinkPad model, implement touchpad quirks. Ideally, the file would just be copied from ./etc/libinput. FIX PLEASE!!!
if [ "ThinkPad E14 Gen 2" == "$(cat "/sys/devices/virtual/dmi/id/product_family")" ];then
    sudo mkdir "/etc/libinput"
    echo "[Touchpad pressure override]
MatchUdevType=touchpad
MatchName=*Elan Touchpad # According to reddit, there is another type, that doesn't match mine. It has the same problem though.
MatchDMIModalias=dmi:*svnLENOVO:*:pvrThinkPadE14Gen2*
AttrPalmPressureThreshold=300
AttrPressureRange=10:8" | sudo tee -a "/etc/libinput/local-overrides.quirks" > /dev/null
fi