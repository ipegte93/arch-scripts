#!/bin/bash

git clone https://aur.archlinux.org/yay-bin.git
cd yay
makepkg -si --noconfirm
cd ../
rm -rf yay
