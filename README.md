# Arch Linux (patsy)

VM to use for CTFs

## Bring in submodules

	git submodule init  
	git submodule update  

## Create base box with packer  

	packer build packer/arch-packer.json  

## Add base box to vagrant and start machine  

	vagrant box remove arch-patsy 
	vagrant box add arch-patsy packer_virtualbox_virtualbox.box  
	vagrant up  

