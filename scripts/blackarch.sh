#!/bin/sh

echo *************************************************************************
echo [+] Installing blackarch tools
echo *************************************************************************
sleep 3;

cat <<EOF >> /etc/pacman.conf
[blackarch]
SigLevel = Optional TrustAll
Server = http://www.blackarch.org/pub/blackarch/x86_64/
EOF

pacman -Sy
pacman --noconfirm -S afflib autopsy bed blindelephant burpsuite cms-explorer creepy cryptcat dex2jar 
pacman --noconfirm -S dirb dirbuster dmitry dnsenum dnsbf dnswalk exploit-db fang flasm guymager hashcat hashid
pacman --noconfirm -S hexinject hydra maltego md5deep mitmproxy netdiscover p0f pack paros pdf-parser pdfid 
pacman --noconfirm -S sfuzz skipfish sqlninja sslsniff sslstrip thc-pptp-bruter theharvester volatility zaproxy metasploit  

