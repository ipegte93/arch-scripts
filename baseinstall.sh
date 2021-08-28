#!/bin/bash

echo "Use localtime for windows? [y/n]"
read localtime

#time set
if [ ${localtime} -eq "y"]; then
    timedatectl set-local-rtc 1
fi
ln -sf /usr/share/zoneinfo/Asia/Seoul
ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime
hwclock --systohc

echo "en_US.ISO-8859-1" >> /etc/locale.gen
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
echo "ko_KR.EUC-KR EUC-KR" >> /etc/locale.gen
echo "ko_KR.UTF-8 UTF-8" >> /etc/locale.gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
locale-gen

echo "arch" >> /etc/hostname

echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1 localhost" >> /etc/hosts
echo "127.0.0.1 arch.localdomain arch" >> /etc/hosts
sudo echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

pacman -S networkmanager grub os-prober efibootmgr
grub-install --efi-directory=/boot
os-prober
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable NetworkManager.service

useradd -mG wheel ipegte93
echo "root passwd"
passwd
echo "ipegte93 passwd"
passwd ipegte93


