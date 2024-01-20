#!/bin/bash

# Clone the tpm (Tmux Plugin Manager) repository
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Write tmux configuration to ~/.tmux.conf
cat << EOF > ~/.tmux.conf
set-option -sa terminal-overrides ",xterm*:Tc"

# Enable mouse mode
set -g mouse on

# Theme
set -g @catppuccin_flavour 'mocha'

# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'
set -g @plugin 'dreamsofcode-io/catppuccin-tmux'
set -g @plugin 'christoomey/vim-tmux-navigator'
set -g @plugin 'tmux-plugins/tmux-yank'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
EOF

# Source the tmux configuration
tmux source ~/.tmux.conf

# Start tmux
tmux

# Navigate to the tpm directory and execute tpm
(cd ~/.tmux/plugins/tpm && ./tpm)

# Source the tmux configuration again
tmux source ~/.tmux.conf

# The 'ctrl+b I' command is a tmux key binding and cannot be executed in a script.
# You will need to press 'ctrl+b' then 'I' manually after the script completes.
