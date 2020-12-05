sudo add-apt-repository ppa:obsproject/obs-studio

sudo apt update

sudo apt install neovim neofetch git kitty zsh gnome-tweaks obs-studio postgresql postgresql-contrib vlc p7zip-full -y

sudo snap install slack --classic

sudo snap install spotify discord postman 

wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/CascadiaCode/Regular/complete/Caskaydia%20Cove%20Regular%20Nerd%20Font%20Complete.otf

mkdir ~/.fonts/

mv 'Caskaydia Cove Regular Nerd Font Complete.otf' ~/.fonts/ 

rm 'Caskaydia Cove Regular Nerd Font Complete.otf'

mv ./others/user-dirs.dirs ~/.config

mkdir ~/.config/nvim/

mv nvim ~/.config

sudo apt install curl -y

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

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

cd ~

sudo apt install node-typescript make git -y

git clone https://github.com/pop-os/shell

cd shell

make local-install

cd ~

git clone https://github.com/puneetsl/lotion

sudo ./install_native.sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

echo -e '\n\nexport NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc

source ~/.zshrc

nvm install --lts

