#!/usr/bin/env sh
brew install tmux
CMD="source $PWD/.tmux.conf"
grep -i "$CMD" $HOME/.tmux.conf || echo $CMD >> $HOME/.tmux.conf
