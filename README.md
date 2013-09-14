# Arch Linux (patsy)

VM to use for CTFs

## Bring in submodules

	git submodule init  
	git submodule update  

## Create base box with packer  

	cd packer/archlinux-x86_64
	packer build template.json  

## Add base box to vagrant and start machine  

	vagrant box remove arch-patsy 
	vagrant box add arch-patsy packer_virtualbox_virtualbox.box  
        cd ../..
	vagrant up  

