if [ -d "$HOME/.config/nvim" ]; then
	echo " ➜ Neovim config already exists ❌"
	echo " ➜ Move you current config folder 📁"
fi

# Neovim
if ! nvim_loc="$(type -p "nvim")" || [[ -z "nvim_loc" ]]; then 
	echo " ➜ Installing Neovim... ⚙️"
	sudo add-apt-repository ppa:neovim-ppa/stable -y
	sudo apt-get update
	sudo apt-get install neovim -y
else
	echo " ➜ Neovim is already installed"
fi

# Dependencies
# GCC - (TreeSitter)
if ! gcc_loc="$(type -p "gcc")" || [[ -z "gcc_loc" ]]; then 
	echo " ➜ Installing GCC... ⚙️"
	sudo apt install build-essential -y
else
	echo " ➜ GCC is already installed"
fi
