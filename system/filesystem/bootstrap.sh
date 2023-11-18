#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Copy base filesystem to $HOME/base
echo "Copied directory structure to $HOME/base"
cp -rn system/filesystem/base "$HOME"
