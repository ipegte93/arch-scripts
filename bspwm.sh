#!/bin/bash

sudo pacman -S - < pacman.list
sudo systemctl enable lightdm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../
sudo rm -rf yay

yay -S polybar nerd-fonts-complete google-chrome picom-tryone-git yadm kime
yadm clone https://github.com/ipegte93/dotfiles.git
yadm alt