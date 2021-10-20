#!/bin/bash

sudo pacman -S --noconfirm xorg xorg-server gnome gnome-tweaks gnome-software-packagekit-plugin ibus-hangul grub-customizer noto-fonts-cjk ttf-jetbrains-mono archlinux-appstream-data zsh-completions powerline powerline-fonts

sudo systemctl enable gdm.service

sh ./special/yay.sh
sh ./special/Orchis.sh

yay -S --noconfirm google-chrome chrome-gnome-shell-git visual-studio-code-bin authy ttf-meslo-nerd-font-powerlevel10k zsh-theme-powerlevel10k-git tela-circle-icon-theme-git vimix-cursors-git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
