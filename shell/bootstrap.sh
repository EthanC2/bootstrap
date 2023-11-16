#!/bin/bash
FLAGS=$1
set -$FLAGS

for file in $(ls bash*); do
    cat $file | tee -a '$HOME/.$file'
done
