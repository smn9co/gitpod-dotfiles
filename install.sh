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

# Add Neovim config
cp -r .config/nvim ~/.config/

# Add tmux config
cp -r .config/tmux ~/.config/

# Make sure to run ~/.bashrc when connecting via SSH
echo 'source ~/.bashrc' >> ~/.bash_profile

echo -e "\nInstallation complete!"
