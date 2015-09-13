#!/bin/sh

echo *************************************************************************
echo [+] Installing VIM Plugins
echo *************************************************************************
sleep 3;

CURDIR=$(pwd)
TMPDIR=$(sudo -u vagrant mktemp -d)

cd "${TMPDIR}"
sudo pacman -S --noconfirm base-devel vim

curl https://aur.archlinux.org/cgit/aur.git/snapshot/vim-fugitive-git.tar.gz 2>/dev/null | sudo -u vagrant tar xzf -
cd vim-fugitive-git && sudo -u vagrant makepkg -si --noconfirm 2>/dev/null
cd ..

curl https://aur.archlinux.org/cgit/aur.git/snapshot/vim-airline-git.tar.gz 2>/dev/null | sudo -u vagrant tar xzf -
cd vim-airline-git && sudo -u vagrant makepkg -si --noconfirm 2>/dev/null
cd ..

curl https://aur.archlinux.org/cgit/aur.git/snapshot/vim-pathogen.tar.gz 2>/dev/null | sudo -u vagrant tar xzf -
cd vim-pathogen && sudo -u vagrant makepkg -si --noconfirm 2>/dev/null
cd ..

curl https://aur.archlinux.org/cgit/aur.git/snapshot/vim-gitgutter-git.tar.gz 2>/dev/null | sudo -u vagrant tar xzf -
cd vim-gitgutter-git && sudo -u vagrant makepkg -si --noconfirm 2>/dev/null
cd ..

sudo -u vagrant mkdir -p /home/vagrant/.vim/{colors,bundle}
sudo -u vagrant curl https://raw.githubusercontent.com/rhysd/wallaby.vim/master/colors/wallaby.vim > /home/vagrant/.vim/colors/wallaby.vim 2>/dev/null

cd /home/vagrant/.vim/bundle
sudo -u vagrant git clone https://github.com/scrooloose/nerdtree.git
cd "${TMPDIR}"

cd "${CURDIR}"
rm -rf "${TMPDIR}"
