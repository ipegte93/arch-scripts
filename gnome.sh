#!/bin/bash

sudo pacman -S --noconfirm xorg xorg-server gnome gnome-tweaks gnome-software-packagekit-plugin ibus-hangul grub-customizer noto-fonts-cjk ttf-jetbrains-mono archlinux-appstream-data

sudo systemctl enable gdm.service
sudo -u gdm gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat

sh yay.sh
yay -S --noconfirm google-chrome chrome-gnome-shell-git visual-studio-code-bin authy