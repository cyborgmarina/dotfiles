#!bin/sh

session_exists=$(tmux ls | grep main | wc -l)

if [ $session_exists -eq 1 ] 
then
  tmux attach-session -t main
else
  tmux new -s main
fi

