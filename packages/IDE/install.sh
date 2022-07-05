#!/usr/bin/env sh
IDE_CONFIG_DIR="$HOME/.config/nvim"
INIT_CMD="source $PWD/packages/IDE/init.vim"
PLUGINS_SOURCE_COMMAND="source $PWD/packages/IDE/config.lua"

brew install nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
	~/.local/share/nvim/site/pack/packer/start/packer.nvim

grep -i "$INIT_CMD" $IDE_CONFIG_DIR/init.vim \
	|| echo $INIT_CMD >> "$IDE_CONFIG_DIR/init.vim"
grep -i "$PLUGINS_SOURCE_COMMAND" $IDE_CONFIG_DIR/init.vim \
	|| echo $PLUGINS_SOURCE_COMMAND >> "$IDE_CONFIG_DIR/init.vim"

