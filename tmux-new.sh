#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: tmux-new <session-name>" >&2
  exit 1
fi

SESSION_NAME=$1
tmux new-session -d -s "$SESSION_NAME"

tmux send-keys -t "$SESSION_NAME:1" "c" Enter
tmux send-keys -t "$SESSION_NAME:1" "ff" Enter
tmux send-keys -t "$SESSION_NAME:1" "v"

tmux new-window -t "$SESSION_NAME"
tmux send-keys -t "$SESSION_NAME:2" "c" Enter
tmux send-keys -t "$SESSION_NAME:2" "lg"

tmux new-window -t "$SESSION_NAME"

tmux select-window -t "$SESSION_NAME:1"
tmux attach-session -t "$SESSION_NAME"
