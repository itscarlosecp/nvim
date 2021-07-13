if ! stow_loc="$(type -p "stow")" || [[ -z "stow_loc" ]]; then 
	echo " ➜ Stow is not installed!"
else
	stow .config/ --target=$HOME/.config/
fi
