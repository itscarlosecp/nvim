#!/bin/bash
# Shell
ln -sf $HOME/.dotfiles/.bashrc $HOME/.bashrc
ln -sf $HOME/.dotfiles/.zshrc $HOME/.zshrc
ln -sf $HOME/.dotfiles/.commonrc $HOME/.commonrc
ln -sf $HOME/.dotfiles/lsd/config.yaml $HOME/.config/lsd

# Applications
ln -sTf $HOME/.dotfiles/nvim $HOME/.config/nvim
ln -sf $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
ln -sf $HOME/.dotfiles/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
ln -sf $HOME/.dotfiles/vim/.vimrc $HOME/.vimrc
ln -sf $HOME/.dotfiles/starship/starship.toml $HOME/.config/starship.toml
