#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Install editor packages
sudo apt install -y -qq $(cat programmingeditors/packages.txt | tr '\n' ' ')

# 2. Copy neovim configuration files to ~/.config/nvim
echo "Copying neovim configuration to $HOME/.config/nvim"
cp -rn programming/editors/nvim "$HOME/.config/"
