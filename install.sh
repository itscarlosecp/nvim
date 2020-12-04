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

#!/bin/bash

cd ~/Downloads

# Apt Installs
sudo apt install neovim neofetch git kitty zsh gnome-tweaks -y

# Snap Installs
sudo snap install slack --classic
sudo snap install spotify discord postman 

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
git clone https://github.com/itscarlosecp/dotfiles.git
cd dotfiles
cp -r nvim ~/.config/nvim/
