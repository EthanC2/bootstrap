#!/bin/bash
set -e
MODE=$1
SCRIPTS=(
    programming
    system
)

# 1. Safety checks
if [[ "$MODE" != "--run" ]] && [[ "$MODE" != "--dry-run" ]]; then
    >&2 echo "usage: sudo -E ./bootstrap.sh [--run | --dry-run]"
    exit 1
fi

if [[ $(id -u) != 0 ]]; then
    >&2 echo "error: rerun as root with 'sudo -E'"
    exit 2
fi

if [[ "$HOME" == "/root" ]]; then
   >&2 echo "error: refused to run script in root environment. you forgot to run with 'sudo -E'"
   exit 3
fi

# 2. Choose script mode
if [[ $MODE == "--run" ]]; then
    FLAGS=eu
else
    FLAGS=euvn
fi

# 3. Update system and all existing packages
[[ $MODE == "--run" ]] && sudo apt update -y -qq
[[ $MODE == "--run" ]] && sudo apt upgrade -y -qq

# 4. Run each child installation script
for script in ${SCRIPTS[@]}; do
    ./$script/bootstrap.sh $FLAGS
done

# 3. Finish
echo -e "\n\nBOOTSTRAP COMPLETED SUCCESSFULLY."
