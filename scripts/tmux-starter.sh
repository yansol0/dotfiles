#!/bin/bash

SESSION_NAME="arktide"
WORKDIR="$HOME/git/arktide" 

tmux has-session -t $SESSION_NAME 2>/dev/null

if [ $? != 0 ]; then
    tmux new-session -d -s $SESSION_NAME -c "$WORKDIR"
    tmux rename-window -t $SESSION_NAME:1 "vim"

    tmux new-window -t $SESSION_NAME:2 -n "server" -c "$WORKDIR"
    tmux new-window -t $SESSION_NAME:3 -n "db" -c "$WORKDIR"
    tmux new-window -t $SESSION_NAME:4 -n "shell" -c "$WORKDIR"

    tmux select-window -t $SESSION_NAME:1
fi

tmux attach -t $SESSION_NAME
