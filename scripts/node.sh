if ! nvm_loc="$(type -p "nvm")" || [[ -z "nvm_loc" ]]; then 
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
else
	echo "NVM already installed"
fi
