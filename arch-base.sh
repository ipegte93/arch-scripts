#!/bin/bash

ln -sf /usr/share/zoneinfo/Asia/Seoul
ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime
hwclock --systohc

echo "en_US.ISO-8859-1" >> /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "ko_KR.EUC-KR EUC-KR" >> /etc/locale.gen
echo "ko_KR.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf


echo "arch" >> /etc/hostname

echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1 localhost" >> /etc/hosts
echo "127.0.0.1 arch.localdomain arch" >> /etc/hosts

