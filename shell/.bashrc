# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Source dotfiles
for DOTFILE in `find $HOME/.shell`
do
  [ -f “$DOTFILE” ] && source “$DOTFILE”
done