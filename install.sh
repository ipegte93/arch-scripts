#!/bin/bash

sudo pacman -S - < pacman.list
sudo systemctl enable lightdm

yay -S orchis-theme-git
yay -S polybar nerd-fonts-complete yadm




yadm clone https://github.com/ipegte93/dotfiles.git
yadm alt