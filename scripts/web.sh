#!/bin/sh

echo ************************************************************************* 
echo [+] Installing web packages
echo ************************************************************************* 
sleep 3;

pacman --noconfirm -S chromium
pacman --noconfirm -S firefox
pacman --noconfirm -S firefox-adblock-plus
pacman --noconfirm -S firefox-firebug
pacman --noconfirm -S firefox-noscript
pacman --noconfirm -S flashplugin

