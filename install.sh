#!/bin/bash

sudo pacman -S - < pacman.list
sudo systemctl enable lightdm

yay -S orchis-theme-git polybar nerd-fonts-complete google-chrome