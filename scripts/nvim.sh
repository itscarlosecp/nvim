# Download config from my repo
get_config() {
	echo " ➜ Cloning neovim configuration... ✏️"
	git clone https://github.com/itscarlosecp/.dotfiles temp
	mv -f ./temp/nvim $HOME/.config/
	rm -rf temp
	echo " ➜ Download successful ✔️"
	echo " ➜ Post-install instructions:"
	echo "   https://github.com/itscarlosecp/.dotfiles 📜"
}

# Neovim
get_neovim() {
	echo " ➜ Installing Neovim... ⚙️"
	sudo add-apt-repository ppa:neovim-ppa/unstable -y
	sudo apt-get -qq update
	sudo apt-get -qq install neovim -y
}

# Dependencies
get_dependencies() {
	# GCC - (TreeSitter)
	echo " ➜ Getting dependencies... 🛒"
	if ! gcc_loc="$(type -p "gcc")" || [[ -z "gcc_loc" ]]; then 
		echo " ➜ Installing GCC... 💾"
		sudo apt-get -qq install build-essential -y
	else
		echo " ➜ GCC is already installed ✔️"
	fi
}

install() {
	if [ -d "$HOME/.config/nvim" ]; then
		echo " ➜ Neovim config already exists ❌"
		echo " ➜ Move your current config folder 📁"
		echo "   Folder location: ~/.config/nvim"
	else
		get_neovim
		get_dependencies
		get_config
	fi
	printf "\n"
}

install
