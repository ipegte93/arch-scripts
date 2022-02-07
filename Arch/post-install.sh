#!/bin/bash

sudo pacman -S --noconfirm noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono
sudo pacman -S --noconfirm xorg xorg-server gnome gnome-tweaks ibus-hangul grub-customizer archlinux-appstream-data

sudo pacman -S --noconfirm hub
sudo pacman -S --noconfirm rofi

sh ./special/fluent.sh

sh ./special/aura.sh
sudo aura -A bspwm-git sxhkd-git yadm-git

sudo systemctl enable gdm.service
sudo -u gdm gsettings set org.gnome.desktop.peripherals.mouse accel-profile flat


# Applications
sudo Aura -A google-chrome