#!/bin/bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../
sudo rm -rf yay

yay -S yadm
yadm clone https://github.com/ipegte93/dotfiles.git
yadm alt