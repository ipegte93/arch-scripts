#!/bin/bash

# time set
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
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

pacman -S --noconfirm networkmanager grub os-prober efibootmgr ntfs-3g
grub-install --efi-directory=/boot
echo "GRUB_DISABLE_OS_PROBER=false" >> /etc/default/grub
os-prober
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager.service

useradd -mG wheel ipegte93
echo "root passwd"
passwd
echo "ipegte93 passwd"
passwd ipegte93


