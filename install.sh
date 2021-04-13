#!bin/bash

#Firefox Developer Edition
if [ ! -d "/opt/firefox" ]; then
	sudo wget -O- https://download-installer.cdn.mozilla.net/pub/devedition/releases/88.0b9/linux-x86_64/en-US/firefox-88.0b9.tar.bz2 | sudo tar xjf - -C /opt && sudo chown -R $USER /opt/firefox

	cat > ~/.local/share/applications/firefoxDeveloperEdition.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Firefox Developer Edition
Exec=/opt/firefox/firefox
Icon=/opt/firefox/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
Categories=Network;WebBrowser;Favorite;
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp; X-Ayatana-Desktop-Shortcuts=NewWindow;NewIncognitos;
EOL

fi

#Applications
if ! grep -q "deb .*mmstick76/alacritty" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
	sudo add-apt-repository ppa:mmstick76/alacritty -y
fi
sudo apt install alacritty neovim tmux vlc git curl ripgrep libinput-tools wmctrl xdotool make neofetch gnome-tweaks cmatrix sl cowsay -y
sudo snap install spotify

#Create Symlinks
ln -sf ~/.dotfiles/nvim ~/.config/nvim
ln -sf ~/.dotfiles/alacritty ~/.config/alacritty
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/libinput-gestures.conf ~/.config/libinput-gestures.conf

#Install Neovim Plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && nvim +slient +PlugInstall +qall

#Install Node
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

#Get Font
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete.ttf -P ~/.fonts
