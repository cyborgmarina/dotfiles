#!/usr/bin/env sh

PROMPT="alcipir>"
echo "$PROMPT Installing and configuring packages..."
sh ./packages/IDE/install.sh
sh ./packages/programming-languages/install.sh
echo "$PROMPT dotfiles installed."
