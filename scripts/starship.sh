if ! starship_loc="$(type -p "starship")" || [[ -z "starship_loc" ]]; then 
	sh -c "$(curl -fsSL https://starship.rs/install.sh)"
else
	echo "Starship already installed"
fi
