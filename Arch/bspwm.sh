#!/bin/bash

sudo pacman -S - < bspwm.list
sudo systemctl enable lightdm

sh ./special/yay.sh

yay -S polybar nerd-fonts-noto google-chrome picom-ibhagwan-git yadm kime-git zscroll-git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

yadm clone -f https://github.com/ipegte93/dotfiles.git
yadm reset HEAD --hard
