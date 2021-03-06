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
  * zaproxy

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
  * ROPGadget
  * PWNTools
  * bpython


================================
-- Network Tools ---------------
================================
  The following network tools have been installed. Others might be included
  in other catagories. 

  * wireshark-gtk
  * gnu-netcat
  * nmap
  * tor
  * proxychains
  * Metasploit
  * armitage


================================
-- Metasploit ------------------
================================
  The metasploit installer is located in the vagrant home directory. Due to
  licensing, the installation is a task for the end-user. You can begin this
  process by running the installer as root.

  Armitage is installed and ready to use but is dependent on metasploit being
  installed and XForwarding functional as the root user. XAUTHORITY is configured
  for root but not directly with SUDO. You can either become root via 'sudo su'
  or pass the XAUTHORITY environmental variable to sudo.


================================
-- PWNTools --------------------
================================
  Pwntool is a python toolkit for building exploits. You can read more
  with this links below.
 
  * https://pwntools.readthedocs.org/en/2.2/index.html


