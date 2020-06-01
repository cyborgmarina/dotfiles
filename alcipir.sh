#!/bin/sh
ln -sfv $(pwd)/codium/settings.json $HOME/.config/VSCodium/User/settings.json
ln -sfv $(pwd)/shell/.bashrc $HOME/.bashrc
mkdir -p $HOME/.shell
ln -sfv $(pwd)/shell/.alias $HOME/.shell/.alias
ln -sfv $(pwd)/shell/.env $HOME/.shell/.env
ln -sfv $(pwd)/git/.gitconfig $HOME/.gitconfig
source $HOME/.bashrc