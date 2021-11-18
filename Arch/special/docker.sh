#!/bin/bash

sudo pacman -S docker docker-compose --noconfirm
sudo groupadd docker
sudo usermod -aG docker $USER
