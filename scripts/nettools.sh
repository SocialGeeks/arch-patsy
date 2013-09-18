#!/bin/sh

echo *************************************************************************
echo [+] Installing network tools
echo *************************************************************************
sleep 3;

pacman --noconfirm -S wireshark-gtk
usermod -aG wireshark vagrant
pacman --noconfirm -S gnu-netcat
pacman --noconfirm -S nmap
pacman --noconfirm -S tor
usermod -aG tor vagrant

