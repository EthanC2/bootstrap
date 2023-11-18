#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Install development packages
sudo apt install -y -qq $(cat programming/tools/packages.txt | tr '\n' ' ')
