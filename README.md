# Arch Linux (patsy)

VM to use for CTFs

## Create base box with packer  

	packer build arch-packer.json  

## Add base box to vagrant and start machine  

	vagrant box remove arch-patsy 
	vagrant box add arch-patsy packer_virtualbox_virtualbox.box  
	vagrant up  

