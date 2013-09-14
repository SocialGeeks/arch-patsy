# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "arch"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider :virtualbox do |vb|
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "360"]
  end

  config.ssh.forward_x11 = true

  $script = <<SCRIPT
echo [+] Installing web packages
sudo pacman --noconfirm -S chromium
sudo pacman --noconfirm -S firefox
sudo pacman --noconfirm -S firefox-adblock-plus
sudo pacman --noconfirm -S firefox-firebug
sudo pacman --noconfirm -S firefox-noscript
sudo pacman --noconfirm -S flashplugin

echo [+] Installing network packages
sudo pacman --noconfirm -S wireshark-gtk
sudo usermod -aG wireshark vagrant
sudo pacman --noconfirm -S gnu-netcat
sudo pacman --noconfirm -S nmap
sudo pacman --noconfirm -S tor
sudo usermod -aG tor vagrant

echo [+] Installing developer tools
sudo pacman --noconfirm -S base-devel
sudo pacman --noconfirm -S git
sudo pacman --noconfirm -S php
sudo pacman --noconfirm -S ruby
sudo pacman --noconfirm -S python2
sudo pacman --noconfirm -S python-virtualenv 
sudo pacman --noconfirm -S nodejs

echo [+] Installing xorg-xauth for XForwarding
sudo pacman --noconfirm -S xorg-xauth

echo [+] Installing IRC tools
sudo pacman --noconfirm -S hexchat
sudo pacman --noconfirm -S weechat

SCRIPT

  config.vm.provision "shell", inline: $script
end
