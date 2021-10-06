#!/bin/bash

sudo pacman -S xorg xorg-server gnome gnome-tweaks gnome-software-packagekit-plugin ibus-hangul grub-cusomizer noto-fonts-cjk ttf-jetbrains-mono archlinux-appstream-data zsh-completions powerline powerline-fonts

sudo systemctl enable gdm.service

sh yay.sh
yay -S --noconfirm google-chrome google-chrome-shell-git visual-studio-code-bin authy ttf-meslo-nerd-font-powerlevel10k zsh-theme-powerlevel10k-git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc