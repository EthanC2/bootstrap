#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Install networking packages
sudo apt install -y -qq $(cat system/networking/packages.txt | tr '\n' ' ')

# 2. Enable firewall
sudo ufw enable
sudo ufw default deny incoming
sudo ufw allow ssh
sudo ufw status verbose
