#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

# 1. Install networking packages
sudo apt install -y -qq $(cat system/packages.txt | tr '\n' ' ')

# 2. Generate tripwire database (host-based IDS)
tripwire -m i
