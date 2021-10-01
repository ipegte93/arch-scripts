#!/bin/bash

sudo pacman -S xorg xorg-server gnome gnome-tweaks gnome-software-packagekit-plugin ibus-hangul grub-cusomizer noto-fonts-cjk ttf-jetbrains-mono archlinux-appstream-data

sudo systemctl enable gdm.service

sh yay.sh
yay -S google-chrome google-chrome-shell-git visual-studio-code-bin
