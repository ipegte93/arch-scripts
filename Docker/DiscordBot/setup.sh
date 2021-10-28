#!/bin/bash

sudo docker build . -t discordbot:latest
sudo docker run discordbot:latest