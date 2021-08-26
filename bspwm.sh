#!/bin/bash

sudo pacman -S - < pacman.list
sudo systemctl enable lightdm

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../
sudo rm -rf yay

wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
rm -rf install.sh

yay -S polybar nerd-fonts-complete google-chrome picom-tryone-git yadm kime-git oh-my-zsh-git
yadm clone -f https://github.com/ipegte93/dotfiles.git
yadm reset HEAD
yadm alt