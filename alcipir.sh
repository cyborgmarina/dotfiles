#!/bin/sh
ln -sfv $(pwd)/code/settings.json $HOME/.config/Code/User/settings.json
ln -sfv $(pwd)/shell/.bashrc $HOME/.bashrc
mkdir -p $HOME/.shell
ln -sfv $(pwd)/shell/.alias $HOME/.shell/.alias
ln -sfv $(pwd)/shell/.env $HOME/.shell/.env
ln -sfv $(pwd)/shell/.prompt $HOME/.shell/.prompt
ln -sfv $(pwd)/git/.gitconfig $HOME/.gitconfig
source $HOME/.bashrc