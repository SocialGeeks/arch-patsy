#!/bin/sh

echo *************************************************************************
echo [+] Installing network tools
echo *************************************************************************
sleep 3;

pacman --noconfirm -S wireshark-gtk
usermod -aG wireshark vagrant
pacman --noconfirm -S gnu-netcat
pacman --noconfirm -S nmap
pacman --noconfirm -S tor
usermod -aG tor vagrant
pacman --noconfirm -S proxychains

# Download metasploit installer
curl -L http://downloads.metasploit.com/data/releases/metasploit-latest-linux-x64-installer.run > /home/vagrant/metasploit-latest-linux-x64-installer.run 2>/dev/null
chmod +x /home/vagrant/metasploit-latest-linux-x64-installer.run

# Install armitage
curl -L http://www.fastandeasyhacking.com/download/armitage150813.tgz 2>/dev/null | tar xzf - -C /opt/

# Install armitage
echo '#!/bin/sh' > /usr/local/bin/armitage
echo 'cd /opt/armitage/ && ./armitage' >> /usr/local/bin/armitage
chmod +x /usr/local/bin/armitage
