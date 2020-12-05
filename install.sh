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
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install neovim neofetch git kitty zsh gnome-tweaks obs-studio postgresql postgresql-contrib vlc p7zip-full -y

# Snap Installs
sudo snap install slack --classic
sudo snap install spotify discord postman 

# Google Chrome Dev Edition Install
wget https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb
sudo dpkg -i google-chrome-unstable_current_amd64.deb
rm google-chrome-unstable_current_amd64.deb

# Cascadia Code Install
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete.otf
mkdir ~/.fonts/
mv 'Caskaydia Cove Regular Nerd Font Complete.otf' ~/.fonts/ 
rm 'Caskaydia Cove Regular Nerd Font Complete.otf'

# Kitty Configuration
sudo update-alternatives --config x-terminal-emulator
THEME=https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/gruvbox_dark.conf
wget "$THEME" -P ~/.config/kitty/themes
mv kitty.conf ~/.config/kitty

# Default Folders Configuration
mv user-dirs.dirs ~/.config

# Neovim Configuration
mkdir ~/.config/nvim/
mv nvim ~/.config

# Vim Plug Install
sudo apt install curl -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Libinput Gestures and Gestures GUI
sudo gpasswd -a $USER input
sudo apt-get install wmctrl xdotool libinput-tools -y
cd ~
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo ./libinput-gestures-setup install

sudo apt install python3 python3-setuptools xdotool python3-gi libinput-tools python-gobject -y
git clone https://gitlab.com/cunidev/gestures
cd gestures
sudo python3 setup.py install
cp libinput-gestures.conf ~/.config/
rm libinput-gestures.conf

libinput-gestures-setup autostart
libinput-gestures-setup start

# Pop Shell Installation
cd ~
sudo apt install node-typescript make git -y
git clone https://github.com/pop-os/shell
cd shell
make local-install

# Lotion (Notion) Installation
cd ~
git clone https://github.com/puneetsl/lotion
sudo ./install_native.sh

# Oh My Zsh Configuration
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

