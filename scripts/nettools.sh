#!/bin/sh

echo *************************************************************************
echo [+] Installing network tools
echo *************************************************************************
sleep 3;

pacman --noconfirm -S net-tools
pacman --noconfirm -S wireshark-gtk
usermod -aG wireshark vagrant
pacman --noconfirm -S gnu-netcat
pacman --noconfirm -S nmap
pacman --noconfirm -S masscan
pacman --noconfirm -S sslscan
pacman --noconfirm -S tor
usermod -aG tor vagrant
pacman --noconfirm -S proxychains
pacman --noconfirm -S openvpn

