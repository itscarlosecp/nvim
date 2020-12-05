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


# ====================
# ==> APT INSTALLS <==
# ====================

sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install neovim neofetch git kitty zsh gnome-tweaks obs-studio postgresql postgresql-contrib vlc p7zip-full -y


# =====================
# ==> SNAP INSTALLS <==
# =====================

sudo snap install slack --classic
sudo snap install spotify discord postman 


# ==============
# ==> CHROME <==
# ==============

wget https://dl.google.com/linux/direct/google-chrome-unstable_current_amd64.deb
sudo dpkg -i google-chrome-unstable_current_amd64.deb
rm google-chrome-unstable_current_amd64.deb


# =====================
# ==> CASCADIA CODE <==
# =====================

wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete.otf
mkdir ~/.fonts/
mv 'Caskaydia Cove Regular Nerd Font Complete.otf' ~/.fonts/ 
rm 'Caskaydia Cove Regular Nerd Font Complete.otf'


# ======================
# ==> KITTY TERMINAL <==
# ======================

sudo update-alternatives --config x-terminal-emulator
THEME=https://raw.githubusercontent.com/dexpota/kitty-themes/master/themes/gruvbox_dark.conf
wget "$THEME" -P ~/.config/kitty/themes
mv ./terminal/kitty.conf ~/.config/kitty


# ================================
# ==> DEFAULT USER DIRECTORIES <==
# ================================

mv ./others/user-dirs.dirs ~/.config


# ==============
# ==> NEOVIM <==
# ==============

mkdir ~/.config/nvim/
mv nvim ~/.config

sudo apt install curl -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# =========================
# ==> TOUCHPAD GESTURES <==
# =========================

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
cp ./others/libinput-gestures.conf ~/.config/
rm libinput-gestures.conf

libinput-gestures-setup autostart
libinput-gestures-setup start


# ===========================
# ==> POP SHELL EXTENSION <==
# ===========================

cd ~
sudo apt install node-typescript make git -y
git clone https://github.com/pop-os/shell
cd shell
make local-install


# ==============================
# ==> NOTION CLIENT (LOTION) <==
# ==============================

cd ~
git clone https://github.com/puneetsl/lotion
sudo ./install_native.sh


# ==================================
# ==> NODE VERSION MANAGER (NVM) <==
# ==================================

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
echo -e '\n\nexport NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
source ~/.zshrc
nvm install --lts


# ====================================
# ==> ANACONDA PYTHON DISTRIBUTION <==
# ====================================

wget https://repo.anaconda.com/archive/Anaconda3-2020.11-Linux-x86_64.sh
bash ./Anaconda3-2020.11-Linux-x86_64.sh

git clone https://github.com/chdoig/conda-auto-env.git
mv conda-auto-env ~/.conda/
echo -e '\n\nsource ~/.conda/conda-auto-env/conda_auto_env.sh' >> ~/.zshrc
