#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export _JAVA_AWT_WM_NONREPARENTING=1

# Export local bin directory to path
PATH=$PATH:$HOME/.local/bin/:$HOME/Vivado/2025.2/Vivado/bin/

. "$HOME/.local/bin/env"
