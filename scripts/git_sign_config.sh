#!/usr/bin/env bash

# Write SSH key to file
mkdir -p ~/.ssh

echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_ed25519
chmod 600 ~/.ssh/id_ed25519

echo "$SSH_PUBLIC_KEY" > ~/.ssh/id_ed25519.pub
chmod 644 ~/.ssh/id_ed25519.pub

# Tell Git about the SSH key
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519.pub

# Sign commits by default
git config --global commit.gpgsign true

