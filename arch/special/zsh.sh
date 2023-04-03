#!/bin/bash

sudo pacman -S --noconfirm zsh-completions powerline powerline-fonts
yay -S --noconfirm ttf-meslo-nerd-font-powerlevel10k zsh-theme-powerlevel10k-git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
