#
# 88                                               88  88                  88           
# ""                            ,d                 88  88                  88           
#                               88                 88  88                  88           
# 88  8b,dPPYba,   ,adPPYba,  MM88MMM  ,adPPYYba,  88  88       ,adPPYba,  88,dPPYba,   
# 88  88P'   `"8a  I8[    ""    88     ""     `Y8  88  88       I8[    ""  88P'    "8a  
# 88  88       88   `"Y8ba,     88     ,adPPPPP88  88  88        `"Y8ba,   88       88  
# 88  88       88  aa    ]8I    88,    88,    ,88  88  88  888  aa    ]8I  88       88  
# 88  88       88  `"YbbdP"'    "Y888  `"8bbdP"Y8  88  88  888  `"YbbdP"'  88       88  
#
# ========================================================================================= #
# = * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * =
# ========================================================================================= #
#
# Simple installation script for Ubuntu-based distros. It includes most of the apps 
# I usually install when I'm in Ubuntu. You are free to change them. I will probably
# write a Python script to customize which apps to install and set by default, like
# my terminal emulator which is kitty for example.
#
# ========================================================================================= #
#
#   * Github Username: itscarlosecp
#   * Repository: https://github.com/itscarlosecp/dotfiles
#
# ========================================================================================= #
# = * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * =
# ========================================================================================= #


#!/bin/bash

# Apt Installs
sudo apt install neovim neofetch git kitty zsh gnome-tweaks -y

# Snap Installs
sudo snap install slack --classic
sudo snap install spotify discord postman 

# Google Chrome Dev Edition Install
wget https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb
sudo dpkg -i google-chrome-unstable_current_amd64.deb

# Cascadia Code Install
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete.otf
mkdir ~/.fonts/
mv 'Caskaydia Cove Regular Nerd Font Complete.otf' ~/.fonts/ 
rm 'Caskaydia Cove Regular Nerd Font Complete.otf'

# Kitty Configuration
sudo update-alternatives --config x-terminal-emulator
THEME=https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/gruvbox_dark.conf
wget "$THEME" -P ~/.config/kitty/themes
touch ~/.config/kitty/kitty.conf
printf "include ./themes/gruvbox_dark.conf\n\nfont_family CaskaydiaCove Nerd Font\ncursor_shape beam\nbackground_opacity 1" > ~/.config/kitty/kitty.conf

# Vim Plug Install
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Oh My Zsh Configuration
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Neovim Configuration
mkdir ~/.config/nvim/
cd nvim cp * ~/.config/nvim
cd ..
rm -rf nvim

# Gnome Customization
# Icon Theme
wget https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MDU3NTg1ODYiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjgxOWFmZGE0NzFiZDJhODBmYzcxNmM5YWQ2NGM3MWRkM2E2OTk1NGUxZjAzZTMwNzE5NzBkNWIwMmFkMDA1OTRiMTMwMmVhYzI4NjFhNTgwMzE0NmUxYWNjMGNiM2MwOWMzMzdmOWVkY2E2MTY0MDgzOTkwODMxZGM4NmE5YzliIiwidCI6MTYwNzExNjIzNiwic3RmcCI6ImZlNTcyNDk1MDNlOTEwYmQ2Njg0YTY1OWFmZWQwMjQxIiwic3RpcCI6IjIwMC4xMjYuMjQxLjEwNiJ9.o1D_bE2GSstIEEEG2zjMSPgWylBdfGFPaiqm0UFEtqE/WhiteSur.tar.xz
mkdir white-sur-icons
tar -xvf WhiteSur.tar.xz -C white-sur-icons
rm -rf WhiteSur.tar.xz
cd white-sur-icons
mkdir ~/.icons
mv WhiteSur WhiteSur-dark ~/.icons/
cd ..
rm -rf white-sur-icons

# GTK and Shell Themes
wget https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MDQ1MjAyMzUiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6IjBhZTVmYTQ1ZmJlYTgwMjIwOTk4MjI4MmQ5MDIxZTVlMzE2YjkxNDY2ZDU3NzRkMWQ5MDQyYWI2YjIyYzcxNjdhOWU3YTdkMzJkN2JkNTIyODFhYjcwMjQ5NmEzNTA2YmU1YTRhMmI3Zjk2MmYzNjE4NzA1YmUwNjNiODc5YThiIiwidCI6MTYwNzExNDcwMCwic3RmcCI6ImZlNTcyNDk1MDNlOTEwYmQ2Njg0YTY1OWFmZWQwMjQxIiwic3RpcCI6IjIwMC4xMjYuMjQxLjEwNiJ9.JI24Fxe2PuAKXZnCjoH27eG00qxzaWZupxE2H-bh0is/Yaru-Teal-v20.10.1.tar.xz
mkdir gtk-theme
tar -xvf Yaru-Teal-v20.10.1.tar.xz -C gtk-theme
rm -rf Yaru-Teal-v20.10.1.tar.xz
cd gtk-theme
cd Theme
mkdir ~/.themes
cp -r Yaru-Teal-dark ~/.themes/
cd ../../
rm -rf gtk-theme

# Cursors
wget https://dllb2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE1ODA0MDIzODkiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6ImVjMTRlNWRhODk1OGI3NzdlZDQ4ZDFhZTJlZDg4YWU1YmZlMjM5MzkxZmFmY2ViMTlhYWU2OTk5NzhjMGQ2NjdmMjk1ZjA1MjlhYzZkN2NhYTEzNTk1MGM0NmJlY2ViNmNhNjYxYWMyYTg0MGY1NDllN2YxYzNhYzAzOTllOWZmIiwidCI6MTYwNzExNzYzOSwic3RmcCI6ImZlNTcyNDk1MDNlOTEwYmQ2Njg0YTY1OWFmZWQwMjQxIiwic3RpcCI6IjIwMC4xMjYuMjQxLjEwNiJ9.h2cRzNJ84FsbDcv3QdFD7CZ9E859qcQM57Vy0DLeHfA/McMojave-cursors.tar.xz
mkdir cursors
tar -xvf McMojave-cursors.tar.xz -C cursors
rm -rf McMojave-cursors.tar.xz
cd cursors
cp -r McMojave-cursors ~/.icons/
rm -rf cursors
