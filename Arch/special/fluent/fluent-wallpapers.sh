#!/bin/bash

git clone -b Wallpaper https://github.com/vinceliuice/Fluent-gtk-theme.git

cd Fluent-gtk-theme
sh install-wallpapers.sh -t mountain
sudo sh install-gnome-backgrounds.sh

cd ../
rm -rf Fluent-gtk-theme