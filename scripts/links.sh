#!/bin/bash
# Shell
ln -sf $HOME/.dotfiles/.zshrc $HOME/.zshrc
ln -sf $HOME/.dotfiles/.profile $HOME/.profile

# Applications
ln -sTf $HOME/.dotfiles/nvim $HOME/.config/nvim
ln -sf $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
ln -sf $HOME/.dotfiles/starship/starship.toml $HOME/.config/starship.toml
