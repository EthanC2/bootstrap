#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Install shell packages
sudo apt install -y -qq $(cat shell/packages.txt | tr '\n' ' ')
