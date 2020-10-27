#!/bin/sh
apt-get update
apt-get install neovim -y
mkdir ~/.config/nvim
cd ~/.config
git clone https://github.com/itscarlosecp/linux-setup.git
mv ./linux-setup/nvim ./nvim
rm -rf ./linux-setup
