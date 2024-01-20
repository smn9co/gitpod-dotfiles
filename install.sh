#!/usr/bin/env bash

echo "Starting installation..."

# Changes the current directory to the directory of the script
cd "$(dirname "$0")"

echo -e "\nConfiguring git signing..."
source scripts/git_sign_config.sh

echo -e "\nInstalling Neovim..."
source scripts/install_neovim.sh

echo -e "\nInstallation complete!"
