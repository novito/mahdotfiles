###########################
#  Configuration
###########################

# Clipboard
set-option -g default-command "reattach-to-user-namespace -l zsh"

# use 256 term for pretty colors
set -g default-terminal "screen-256color"

## Change prefix to C-a
set -g prefix C-a
unbind C-b
bind C-a send-prefix

## Do not rename windows
set-option -g allow-rename off

# set vim
setw -g mode-keys vi

# Resizing panes
bind-key -r j resize-pane -D 5
bind-key -r k resize-pane -U 5
bind-key -r h resize-pane -L 5
bind-key -r l resize-pane -R 5

# Highlight current window
set-window-option -g window-status-current-bg yellow
