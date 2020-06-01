# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Source dotfiles
source $HOME/.shell/.prompt
source $HOME/.shell/.env
source $HOME/.shell/.alias