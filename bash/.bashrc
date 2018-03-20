# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# auto "cd" when entering a path
shopt -s autocd

# increase rate
xset r rate 200 50

# open files in vi with fuzzy finder (fzf)
alias vif='fzf --bind "enter:execute(vim {})"'

# vim alias
alias v='vim'
alias vi='vim'
alias vim='vim'
alias nano='vim'
