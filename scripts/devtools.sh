#!/bin/sh

echo *************************************************************************
echo [+] Installing developer/system tools
echo *************************************************************************
sleep 3

pacman --noconfirm -S screen
pacman --noconfirm -S tmux
pacman --noconfirm -S git
pacman --noconfirm -S php
pacman --noconfirm -S ruby
pacman --noconfirm -S python2
pacman --noconfirm -S python-virtualenv
pacman --noconfirm -S nodejs
pacman --noconfirm -S hexedit
pacman --noconfirm -S gdb
pacman --noconfirm -S strace
pacman --noconfirm -S ltrace
pacman --noconfirm -S unzip

