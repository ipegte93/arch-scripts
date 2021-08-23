#!/bin/bash
cd ~

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../
sudo rm -rf yay

sudo pacman -S - < pacman.list
sudo systemctl enable lightdm

yay -S orchis-theme-git polybar nerd-fonts-complete google-chrome picom-tryone-git yadm
yadm clone https://github.com/ipegte93/dotfiles.git
yadm alt