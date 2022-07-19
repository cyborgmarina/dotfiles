#!/usr/bin/env sh
CMD="source $PWD/.tmux.conf"
grep -i "$CMD" $HOME/.tmux.conf || echo $CMD >> $HOME/.tmux.conf
