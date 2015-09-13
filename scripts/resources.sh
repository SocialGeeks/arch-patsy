#!/usr/bin/env bash

# Install terminal
sudo pacman -S --noconfirm rxvt-unicode

# Install global resources
sudo mkdir /usr/share/fonts
sudo mv /vagrant/*.ttf /usr/share/fonts/
sudo mv /vagrant/motd /etc/
sudo mv /vagrant/sgprompt.sh /etc/profile.d/
sudo fc-cache /usr/share/fonts/
sudo mv /vagrant/user.bashrc /etc/skel/.bashrc

# Install user resources
sudo -u vagrant mv /vagrant/README.txt /home/vagrant/
sudo -u vagrant mv /vagrant/Xdefaults /home/vagrant/.Xdefaults
sudo -u vagrant mv /vagrant/user.bashrc /home/vagrant/.bashrc
sudo -u vagrant mv /vagrant/vimrc /home/vagrant/.vimrc

# Install root resources
sudo mv /vagrant/root.bashrc /root/.bashrc
