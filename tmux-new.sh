#!/bin/bash
SESSION_NAME="${1:-$(basename "$PWD")}"  # use arg or default to current dir name
BASE_INDEX=1

wait_for_prompt() {
  local target="$1"
  while true; do
    local last_line
    last_line=$(tmux capture-pane -t "$target" -p | sed '/^$/d' | tail -1)
    if [ -n "$last_line" ]; then
      break
    fi
    sleep 0.05
  done
}

tmux new-session -d -s "$SESSION_NAME"
tmux new-window -t "$SESSION_NAME"
tmux new-window -t "$SESSION_NAME"

# tmux select-window -t "$SESSION_NAME:$BASE_INDEX"

# wait_for_prompt "$SESSION_NAME:$BASE_INDEX"
# tmux send-keys -t "$SESSION_NAME:$BASE_INDEX" "v"

# wait_for_prompt "$SESSION_NAME:$((BASE_INDEX + 1))"
# tmux send-keys -t "$SESSION_NAME:$((BASE_INDEX + 1))" "lg"

tmux select-window -t "$SESSION_NAME:$BASE_INDEX"
tmux attach-session -t "$SESSION_NAME"
