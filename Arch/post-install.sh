#!/bin/bash

# X11 #
sudo pacman -S --noconfirm xorg xorg-server xorg-xinit

# fonts #
sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono

# for AUR #
sh ./special/aura.sh

# Window Manager #
sudo aura -A --noconfirm bspwm-git sxhkd-git polybar-git
sudo Pacman -S rofi rxvt-unicode

sudo pacman -S --noconfirm hub
sudo aura -A --noconfirm google-chrome

# Apply dotfiles #
sudo aura -A --noconfirm yadm-git
yadm clone https://github.com/ipegte93/dotfiles.git
yadm reset --hard
