#!/bin/bash
FLAGS=$1
set -$FLAGS

sudo apt install -y $(cat *.txt | tr '\n' ' ')
