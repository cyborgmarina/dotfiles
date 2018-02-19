#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# allow cd'ing to a folder by just typing its name
shopt -s autocd

# vi-mode
set -o vi

# docker 
alias docker-clear='docker rm $(docker ps -a -q -f status=exited)'

# dwm stuff
alias lock-screen='pamixer -m && slock'

# aliases
alias vim='nvim'
alias v='nvim'
alias vi='nvim'
