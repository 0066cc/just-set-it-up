#!/bin/bash
#tmux new-session -s "Main" -n "News"
tmux new-window
tmux split-window -v 'newsboat'
tmux split-window -h 'mutt'
tmux split-window -v 'podboat'
#tmux -2 attach-session 
