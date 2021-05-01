#!bin/sh

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

	if ! grep -q "deb .*mmstick76/alacritty" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
		sudo add-apt-repository ppa:mmstick76/alacritty -y
	fi

	sudo apt install alacritty vlc libinput-tools xdotool gnome-tweaks
	sudo snap install spotify

	ln -sf $HOME/.dotfiles/libinput-gestures.conf $HOME/.config/libinput-gestures.conf
fi
