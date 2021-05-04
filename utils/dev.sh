#!bin/sh
export CONDA_DOWNLOAD_URL="https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh"
export GO_DOWNLOAD_URL="https://golang.org/dl/go1.16.3.linux-amd64.tar.gz"
export JULIA_DOWNLOAD_URL="https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.1-linux-x86_64.tar.gz"
export RUST_DOWNLOAD_URL="https://sh.rustup.rs"

# Conda
wget $CONDA_DOWNLOAD_URL | bash

# Go
sudo rm -rf /usr/local/go
wget -O- $GO_DOWNLOAD_URL | sudo tar -xzf - -C /usr/local

# Julia
wget $JULIA_DOWNLOAD_URL

# Rust
curl --proto '=https' --tlsv1.2 -sSf $RUST_DOWNLOAD_URL | sh

# Haskell
sudo apt-get install haskell-platform

# Github CLI
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh


