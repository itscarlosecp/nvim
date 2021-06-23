#!bin/sh
export CONDA_DOWNLOAD_URL="https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh"

# Conda
wget $CONDA_DOWNLOAD_URL | bash

# Go
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt install golang-go

# Julia
sudo apt-get install julia

# Rust
sudo apt install rustc

# Haskell
sudo apt-get install haskell-platform

# Github CLI
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh


