# ZSH
if ! zsh_loc="$(type -p "zsh")" || [[ -z "zsh_loc" ]]; then 
	sudo apt-get install zsh -y
else
	echo "• ZSH already installed"
fi

# Starship prompt
if ! starship_loc="$(type -p "starship")" || [[ -z "starship_loc" ]]; then 
	sh -c "$(curl -fsSL https://starship.rs/install.sh)"
else
	echo "• Starship already installed"
fi

# Node Version Manager
if ! nvm_loc="$(type -p "nvm")" || [[ -z "nvm_loc" ]]; then 
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
else
	echo "• NVM already installed"
fi
