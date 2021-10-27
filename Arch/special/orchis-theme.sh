#!/bin/bash

sudo pacman -S --noconfirm gtk-engine-murrine gnome-themes-extra sassc

git clone https://github.com/vinceliuice/Orchis-theme.git

sh ./Orchis-theme/install.sh -t default --tweaks compact

rm -rf Orchis-theme
