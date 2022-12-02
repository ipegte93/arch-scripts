#!/bin/bash

sudo pacman -S --noconfirm virtualbox-guest-utils
sudo systemctl enable vboxservice.service
sudo systemctl start vboxservice.service