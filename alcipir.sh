#!/bin/sh
ln -sfv $(pwd)/shell/.bashrc $HOME/.bashrc
ln -sfv $(pwd)/vim/.vimrc $HOME/.vimrc
ln -sfv $(pwd)/shell/.Xresources $HOME/.Xresources
mkdir -p $HOME/.shell
ln -sfv $(pwd)/shell/.alias $HOME/.shell/.alias
ln -sfv $(pwd)/shell/.env $HOME/.shell/.env
ln -sfv $(pwd)/shell/.prompt $HOME/.shell/.prompt
ln -sfv $(pwd)/git/.gitconfig $HOME/.gitconfig
exec bash
