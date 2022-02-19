#!/bin/bash

## for AUR ##
sh ./special/yay.sh

## Programming ##
sudo pacman -S --noconfirm python rustup

# rust
rustup override set stable
rustup update stable

## Window Manager ##
sudo Pacman -S --noconfirm xorg xorg-server xorg-xinit noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-jetbrains-mono rofi alacritty
yay -S --noconfirm bspwm-git sxhkd-git polybar-git kime-bin

## Sound ##
sudo pacman -S --noconfirm pulseaudio pulseaudio-alsa pulsemixer

## Apply dotfiles ##
yay -S --noconfirm yadm-git
yadm clone https://github.com/ipegte93/dotfiles.git
yadm reset --hard

## etc ##
sudo pacman -S --noconfirm hub discord
yay -S --noconfirm google-chrome visual-studio-code-bin