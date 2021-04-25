#!bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
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

#Create Symlinks
ln -sf $HOME/.dotfiles/nvim ~/.config/nvim
ln -sf $HOME/.dotfiles/alacritty ~/.config/alacritty
ln -sf $HOME/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf $HOME/.dotfiles/.zshrc ~/.zshrc

#Install Neovim Plugins
if command -v nvim; then
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && nvim +slient +PlugInstall +qall
fi

#Install Node
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

#Get Font
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete.ttf -P $HOME/.fonts
