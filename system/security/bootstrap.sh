#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Install security packages
sudo apt install -y -qq $(cat system/security/packages.txt | tr '\n' ' ')
