#!/bin/bash
FLAGS=${1:-eu}

DIRECTORIES=(
    filesystem
    networking
    security
    shell
)


for directory in ${DIRECTORIES[@]}; do
    ./system/$directory/bootstrap.sh $FLAGS
done
