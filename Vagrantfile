# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "packer/packer-arch-x86_64.box"

  config.vm.provider :virtualbox do |vb|
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--memory", "768"]
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end

  config.vm.provider :libvirt do |lv|
    lv.cpus = 2
    lv.memory = "768"
  end

  config.ssh.forward_x11 = true

  config.vm.hostname = "patsy"
  config.vm.provision "shell", path: "scripts/multilib.sh"
  config.vm.provision "shell", path: "scripts/devtools.sh"
  config.vm.provision "shell", path: "scripts/nettools.sh"
  config.vm.provision "shell", path: "scripts/web.sh"
  config.vm.provision "shell", path: "scripts/x.sh"
  config.vm.provision "shell", path: "scripts/irc.sh"
  config.vm.provision "shell", path: "scripts/blackarch.sh"
  config.vm.provision "shell", path: "scripts/harden.sh"

end
