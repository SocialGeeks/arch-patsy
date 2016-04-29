#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[31m\]\H\[\e[m\] \[\e[33m\]\w\[\e[m\] \[\e[31m\]\$\[\e[m\] \[\033[m\]'

if [ -f /home/vagrant/.Xauthority ]
then
    export XAUTHORITY=/home/vagrant/.Xauthority
fi

TERM='rxvt-unicode-256color'
