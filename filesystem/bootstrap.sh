#!/bin/bash
FLAGS=$1
set -$FLAGS

echo "Copied directory structure to $HOME/base"
cp -rn filesystem/base "$HOME"
