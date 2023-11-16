#!/bin/bash
echo $SCRIPT_NAME
FLAGS=$1
set -$FLAGS

# 1. Install packages
sudo apt install -y $(cat networking/packages.txt | tr '\n' ' ')

# 2. Enable firewall
sudo ufw enable
sudo ufw default deny incoming
sudo ufw allow ssh

sudo ufw status verbose
