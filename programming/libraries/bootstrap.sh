#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Install library packages
echo "Installing library packages..."
sudo apt install -y -qq $(cat programming/libraries/packages.txt | tr '\n' ' ')
