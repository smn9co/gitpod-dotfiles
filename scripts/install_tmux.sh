#!/usr/bin/env bash

sudo apt-get install -y tmux

# Clone and install tmux plugin manager (TPM)
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Add configs
cp -r config/tmux/. ~/.config/tmux/

# Install tmux plugins
tmux new-session -d ~/.config/tmux/plugins/tpm/scripts/install_plugins.sh

