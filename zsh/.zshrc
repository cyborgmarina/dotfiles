#!/usr/bin/zsh
# Set up editor
export EDITOR=vim
alias vi=vim
alias vim=vim
set -o vi

# Loads Fuzzy Finder
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Set up the prompt

#autoload -Uz promptinit
#promptinit
#prompt adam1

#setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
#bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# aliases to better cli tools alternatives
alias ls=exa
alias cat=bat
alias top=bb
alias gitf=onefetch

# reload zsh config everytime it changes
if [ $(ps aux | grep watchexec | wc -l) -eq 1 ]; then { watchexec -w $HOME/.zshrc source $HOME/.zshrc & } fi

# Specific stuff for my laptop
[ -f ~/.alcipir.zsh ] && source ~/.alcipir.zsh

