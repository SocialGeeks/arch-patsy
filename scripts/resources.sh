#!/usr/bin/env bash

# Install terminal
pacman -S --noconfirm rxvt-unicode

# Install global resources
sudo mkdir /usr/share/fonts
sudo mv /vagrant/DejaVu\ Sans\ Mono\ for\ Powerline.ttf /usr/share/fonts/
sudo mv /vagrant/motd /etc/
sudo mv /vagrant/sgprompt.sh /etc/profile.d/
sudo fc-cache /usr/share/fonts/
sudo mv /vagrant/user.bashrc /etc/skel/.bashrc

# Install user resources
mv /vagrant/README.txt /home/vagrant/
mv /vagrant/Xdefaults /home/vagrant/.Xdefaults
mv /vagrant/user.bashrc /home/vagrant/.bashrc

# Install root resources
sudo mv /vagrant/root.bashrc /root/.bashrc
