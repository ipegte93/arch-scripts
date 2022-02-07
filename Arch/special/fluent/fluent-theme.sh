#!/bin/bash

git clone https://github.com/vinceliuice/Fluent-gtk-theme.git

cd Fluent-gtk-theme
sh install.sh -t default -s standard -i arch --tweaks solid

cd ../
rm -rf Fluent-gtk-theme