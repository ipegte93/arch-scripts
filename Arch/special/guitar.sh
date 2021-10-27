#!/bin/bash

sudo pacman -S --noconfirm jack2 realtime-privileges pulseaudio-jack carla alsa-utils usbutils

yay -S --noconfirm studio-controls-git

usermod -aG audio $USER
