if ! nvim_loc="$(type -p "nvim")" || [[ -z "nvim_loc" ]]; then 
	sudo add-apt-repository ppa:neovim-ppa/stable -y
	sudo apt-get update
	sudo apt-get install neovim -y
else
	echo "Neovim already installed"
fi
