#
# ~/.bashrc
#
setxkbmap -model pc105 -layout us -option grp:alt_shift_toggle

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

########
#ALCI
########
alias evb='sudo systemctl enable --now vboxservice.service'
