#!/bin/bash
CURRENT_SESSION=${PWD##*/}

# Start up the tmux session with specific name
tmux new-session -d -s rails-teespring

# VIM window
tmux send-keys 'vim' 'C-m'
tmux rename-window code

# Window for running development server
tmux new-window
tmux send-keys 'foreman start -f Procfile.dev' 'C-m'
tmux rename-window server

# Window for rails console
tmux new-window
tmux send-keys 'bundle exec rails c' 'C-m'
tmux rename-window console

# Select the first window
tmux select-window -t 0

# Attach the tmux session
tmux attach -t $CURRENT_SESSION
