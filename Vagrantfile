# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "packer-arch-x86_64.box"

  config.vm.provider :virtualbox do |vb|
    vb.cpus = 2
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  end

  config.vm.provider :libvirt do |lv|
    lv.cpus = 2
    lv.memory = "1024"
  end

  config.ssh.forward_x11 = true

  config.vm.hostname = "patsy"
  config.vm.provision "shell", path: "scripts/multilib.sh"
  config.vm.provision "shell", path: "scripts/general.sh"
  config.vm.provision "shell", path: "scripts/devtools.sh"
  config.vm.provision "shell", path: "scripts/nettools.sh"
  config.vm.provision "shell", path: "scripts/web.sh"
  config.vm.provision "shell", path: "scripts/x.sh"
  config.vm.provision "shell", path: "scripts/irc.sh"
  config.vm.provision "shell", path: "scripts/resources.sh"
  config.vm.provision "shell", path: "scripts/vim.sh"
  config.vm.provision "shell", path: "scripts/harden.sh"

  config.vm.synced_folder "resources/", "/vagrant/"

end
