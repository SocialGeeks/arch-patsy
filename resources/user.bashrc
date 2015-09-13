#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[36m\]\H\[\e[m\] \[\e[34m\]\w\[\e[m\] \[\e[36m\]\$\[\e[m\] \[\033[m\]'
