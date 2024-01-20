#!/usr/bin/env bash

echo "Starting installation..."

echo -e "\nInstalling tmux..."
sudo apt-get update && sudo apt-get install -y tmux

# Changes the current directory to the directory of the script
cd "$(dirname "$0")"

echo -e "\nConfiguring git signing..."
source scripts/git_sign_config.sh

echo -e "\nInstalling Neovim..."
source scripts/install_neovim.sh

# Add Neovim config
cp -r .config/nvim ~/.config/

echo -e "\nInstallation complete!"
