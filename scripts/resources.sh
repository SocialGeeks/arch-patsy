#!/bin/sh

echo *************************************************************************
echo [+] Installing blackarch tools
echo *************************************************************************
sleep 3;

# Install terminal
sudo pacman -S --noconfirm rxvt-unicode

# Install global resources
sudo mkdir /usr/share/fonts
sudo curl -L https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf > /usr/share/fonts/DejaVu\ Sans\ Mono\ for\ Powerline.ttf 2>/dev/null
sudo curl -L https://github.com/powerline/fonts/raw/master/LiberationMono/Literation%20Mono%20Powerline.ttf > /usr/share/fonts/Literation\ Mono\ Powerline.ttf 2>/dev/null
sudo fc-cache /usr/share/fonts/
sudo mv /vagrant/motd /etc/
sudo mv /vagrant/sgprompt.sh /etc/profile.d/
sudo cp /vagrant/user.bashrc /etc/skel/.bashrc
sudo cp /vagrant/gdbinit /etc/skel/.gdbinit

# Install user resources
sudo -u vagrant mv /vagrant/README.txt /home/vagrant/
sudo -u vagrant mv /vagrant/Xdefaults /home/vagrant/.Xdefaults
sudo -u vagrant mv /vagrant/user.bashrc /home/vagrant/.bashrc
sudo -u vagrant mv /vagrant/vimrc /home/vagrant/.vimrc
sudo -u vagrant mv /vagrant/gdbinit /home/vagrant/.gdbinit

# Install root resources
sudo mv /vagrant/root.bashrc /root/.bashrc
