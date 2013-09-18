#!/bin/sh

echo *************************************************************************
echo [+] Installing multilib repo and multilib-devel tools
echo *************************************************************************
sleep 3

cat <<EOF >> /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist
EOF

pacman -Sy
pacman -S multilib-devel<<EOF

y
y
EOF

