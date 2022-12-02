#!/bin/bash

sudo pacman -S --noconfirm gtk-engine-murrine gnome-themes-extra sassc

git clone https://github.com/vinceliuice/Orchis-theme.git

sh ./Orchis-theme/install.sh -t grey -c light --tweaks compact

rm -rf Orchis-theme
