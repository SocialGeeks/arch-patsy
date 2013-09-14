#!/bin/sh

echo *************************************************************************
echo [+] Installing developer tools                                          *
echo *************************************************************************
sleep 3

sudo pacman --noconfirm -S base-devel
sudo pacman --noconfirm -S git
sudo pacman --noconfirm -S php
sudo pacman --noconfirm -S ruby
sudo pacman --noconfirm -S python2
sudo pacman --noconfirm -S python-virtualenv
sudo pacman --noconfirm -S nodejs

