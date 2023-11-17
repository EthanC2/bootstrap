#!/bin/bash
FLAGS=$1
set -$FLAGS

# 1. Install development packages
sudo apt install -y -qq $(cat development/packages.txt | tr '\n' ' ')
