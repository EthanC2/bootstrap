#!/bin/bash
FLAGS=${1:-eu}

DIRECTORIES=(
    languages
    tools
    editors
    libraries
)


for directory in ${DIRECTORIES[@]}; do
    ./programming/$directory/bootstrap.sh $FLAGS
done
