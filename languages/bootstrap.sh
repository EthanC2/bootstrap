#!/bin/bash
FLAGS=$1
set -$FLAGS

# 1. Install language packages
echo "Installing language packages..."
sudo apt install -y -qq $(cat languages/packages.txt | tr '\n' ' ')


# 2. Install Rust
if [[ -z $(which cargo) ]]; then
    echo "Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source "$HOME/.cargo/env"
else
    echo "Rust already installed. Skipping..."
fi

# 3. Install the latest .NET LTS release
if [[ -z $(which dotnet) ]]; then
    echo "Installing .NET"

    wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh
    chmod +x ./dotnet-install.sh
    ./dotnet-install.sh --channel LTS
    sudo ln -sf "$HOME/.dotnet/dotnet" /usr/local/bin/dotnet
    rm ./dotnet-install.sh
else
    echo ".NET already installed. Skipping..."
fi
