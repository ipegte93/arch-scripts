#!/bin/bash

sudo pacman -S - < pacman.list
sudo systemctl enable lightdm

yay -S orchis-theme-git polybar nerd-fonts-complete yadm google-chrome


yadm clone https://github.com/ipegte93/dotfiles.git
yadm alt