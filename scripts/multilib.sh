#!/bin/sh

echo *************************************************************************
echo [+] Installing multilib repo and multilib-devel tools
echo *************************************************************************
sleep 3

cat <<EOF >> /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist
EOF

pacman -Syu
pacman -S multilib-devel<<EOF

y
y
y
EOF

