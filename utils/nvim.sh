#!bin/sh

#Install Neovim Plugins
if command -v nvim; then
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' && nvim +slient +PlugInstall +qall
fi

