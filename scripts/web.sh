#!/bin/sh

echo ************************************************************************* 
echo [+] Installing web packages                                             *
echo ************************************************************************* 
sleep 3;

sudo pacman --noconfirm -S chromium
sudo pacman --noconfirm -S firefox
sudo pacman --noconfirm -S firefox-adblock-plus
sudo pacman --noconfirm -S firefox-firebug
sudo pacman --noconfirm -S firefox-noscript
sudo pacman --noconfirm -S flashplugin

