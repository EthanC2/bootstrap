#!/bin/bash
FLAGS=${1:-eu}
set -$FLAGS

if [[ $MODE == "dryrun" ]]; then
    echo "cp -ri * $HOME/.config"
else
    cp -ri * "$HOME/.config"
fi
