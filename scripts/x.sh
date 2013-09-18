#!/bin/sh

echo *************************************************************************
echo [+] Installing X packages needed for XForwarding
echo *************************************************************************
sleep 3;

pacman --noconfirm -S xorg-xauth 

