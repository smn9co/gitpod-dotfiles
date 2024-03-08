#!/usr/bin/env bash

echo -e "Starting installation...\n"

sudo apt-get update && sudo apt-get install -y tree

# Changes the current directory to the directory of the script
cd "$(dirname "$0")"

# Configuring git signing
source scripts/git_sign_config.sh

# Install tmux
source scripts/install_tmux.sh

# Install Neovim
source scripts/install_neovim.sh

# Add Jupyter Lab config
mkdir -p ~/.config/jupyter
cp -r config/jupyter/* ~/.config/jupyter/

# Set Jupyter config path
echo 'export JUPYTER_CONFIG_DIR=~/.config/jupyter' >> ~/.bash_profile

# Set Neovim as default text editor
echo 'export EDITOR=nvim' >> ~/.bash_profile
echo 'export VISUAL=nvim' >> ~/.bash_profile

# Make sure to run ~/.bashrc when connecting via SSH
echo 'source ~/.bashrc > /dev/null' >> ~/.bash_profile

echo -e "\nInstallation complete!"
