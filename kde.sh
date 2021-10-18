#!/bin/bash

sudo pacman -S --noconfirm xorg xorg-server plasma kde-applications noto-fonts-cjk ttf-jetbrains-mono zsh-completions powerline powerline-fonts

sudo systemctl enable sddm

sh yay.sh
yay -S --noconfirm google-chrome visual-studio-code-bin authy ttf-meslo-nerd-font-powerlevel10k zsh-theme-powerlevel10k-git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc