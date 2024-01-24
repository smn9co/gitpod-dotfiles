#!/usr/bin/env bash

echo -e "Starting installation...\n"

sudo apt-get update && sudo apt-get install -y \
  tmux \
  tree

# Changes the current directory to the directory of the script
cd "$(dirname "$0")"

# Configuring git signing
source scripts/git_sign_config.sh

# Installing Neovim
source scripts/install_neovim.sh

# Clone and install tmux plugin manager (TPM)
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
~/.config/tmux/plugins/tpm/bin/install_plugins

# Add configs
cp -r config/* ~/.config/

# Make sure to run ~/.bashrc when connecting via SSH
echo 'source ~/.bashrc > /dev/null' >> ~/.bash_profile

echo -e "\nInstallation complete!"
