#!/bin/sh

echo *************************************************************************
echo [+] Installing network tools
echo *************************************************************************
sleep 3;

sudo pacman --noconfirm -S wireshark-gtk
sudo usermod -aG wireshark vagrant
sudo pacman --noconfirm -S gnu-netcat
sudo pacman --noconfirm -S nmap
sudo pacman --noconfirm -S tor
sudo usermod -aG tor vagrant

