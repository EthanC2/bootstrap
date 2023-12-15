#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Install development packages
sudo apt install -y -qq $(cat programming/tools/packages.txt | tr '\n' ' ')

# 2. Configure Git defaults
git config --global user.name "EthanC2"
git config --global user.email "ethanrcox@protonmail.com"
git config --global core.editor "nvim"
git config --global init.defaultBranch "main"
