#!/bin/sh

echo *************************************************************************
echo [+] Installing general tools
echo *************************************************************************
sleep 3;

pacman -S --noconfirm extra/jdk7-openjdk extra/jre7-openjdk
