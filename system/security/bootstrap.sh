#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Install security packages
sudo apt install -y -qq $(cat system/security/packages.txt | tr '\n' ' ')

# 2. Install ProtonVPN
RELEASES_URL='https://repo.protonvpn.com/debian/dists/stable/main/binary-all/'
PACKAGE=$(curl -s $RELEASES_URL | grep -o "\"protonvpn-stable-release.*\.deb\"" | tr -d '"' | sort -V | head -n 1)
wget -q $RELEASES_URL/$PACKAGE
sudo dpkg -i $PACKAGE
sudo apt update -y
sudo apt install protonvpn-cli
