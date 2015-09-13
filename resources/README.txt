================================
-- README ----------------------
================================
  Patsy is a Archlinux system pre-installed with the common tools used for CTFs.
  This install was created by viking with help from SocialGeeks.

~ We are available to help @ freenodes#socialgeeks.


================================
-- Genral Notes ----------------
================================
  This install has been pre-configured for use with with CTFs. Place note the
  following information as it might be usefull if you run into issues.

  1. Multilib is enabled and multilib-devel is installed.
  2. Default charset is en_US.UTF-8.
  3. Vagrant and root users do not have passwords set. Use RSA keys.
  4. X Forwarding is enabled and many GUI based applications are available.
  5. The system is using the mesa graphics library.
  6. The system is using pango for layout and text rendering.
  7. Passwordless sudo is configured and enabled.


================================
-- Web Tools -------------------
================================
  The following web browsers and plugins have been installed.

  * chromium
  * firefox
  * firefox-adblock-plus
  * firefox-firebug
  * firefox-noscript
  * flashplugin

================================
-- VIM -------------------------
================================
  Vim has been installed by default with a few tweeks and plugins.
 
  Editor Settings:
  1. Soft tabs are used.
  2. Case insensitive search by default.
  3. Mouse support is enabled.
  4. Makefile override for normal tab chars.
  5. Stiky highlights for tabing blocks of text.
  6. Using Wallaby Color Scheme.
  7. Powerline Fonts (for airline)
  8. A few other visual changes.

  Plugins:
  * Airline    - Better status buffer and buffer tabs.
  * Git Gutter - Shows file changes as comparied against current git repo.
  * NerdTree   - A fast file browser (toggle with ctrl+p).
  * Fugitive   - GIT Integration for VIM.


================================
-- IRC -------------------------
================================
  The following IRC Clients have been installed.

  * hexchat
  * weechat


================================
-- Dev Tools -------------------
================================
  The following developement tools have been installed.

  * screen
  * tmux
  * git
  * php
  * ruby
  * python2
  * python-virtualenv
  * python2-virtualenv
  * nodejs
  * hexedit
  * gdb
  * strace
  * ltrace
  * unzip


================================
-- Network Tools ---------------
================================
  The following network tools have been installed. Others might be included
  in other catagories. 

  * wireshark-gtk
  * gnu-netcat
  * nmap
  * tor

================================
-- BLACKARCH -------------------
================================
  BlackArch is a pentesting toolkit built on top of Archlinux. The repos have
  been added and a few meta-packages have been installed.
  You can read @ http://blackarch.org/downloads.html#install-repo

  To get a full list of meta-packages:
  $ sudo pacman -Sg | grep blackarch

  The follwing meta-packages have been installed:
  - blackarch-webapp
  - blackarch-proxy
  - blackarch-cracker
  - blackarch-spoof
  - blackarch-forensic
  - blackarch-crypto
  - blackarch-binary
  - blackarch-misc
  - blackarch-sniffer
  - blackarch-automation
  - blackarch-fingerprint
  - blackarch-recon
  - blackarch-database
  - blackarch-tunnel
  - blackarch-decompiler
