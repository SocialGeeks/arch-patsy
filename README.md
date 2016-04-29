# Arch Linux (patsy)

Pre-configured Arch linux VirtualBox VM with development and security tools installed.  The VirtualBox VM will be converted into a vagrant box that can be added to your vagrant library.

## Pre-requisites  
* [Vagrant](http://www.vagrantup.com/)  
* [Packer] (http://packer.io)  
* [VirtualBox](https://www.virtualbox.org/)  

## Vagrant base box

If you don't already have the vagrant box in your library, you can create this like so.

	git clone https://github.com/sgviking/packer-arch
    cd packer-arch
    packer build -only=libvirt arch-template.json
	vagrant box add arch-x86_64 output/packer_arch_libvirt.box

## Start arch-patsy with vagrant

The 'vagrant up' command will import the arch base image into VirtualBox and then run the post configuration specified in the Vagrantfile.  Use 'vagrant ssh' to ssh into arch-patsy.  XForwarding is configured and working.  

	vagrant up --provider=libivrt
	vagrant ssh

