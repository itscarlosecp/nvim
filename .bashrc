source "$HOME/.profile"

if nvm_loc="$(type -p "nvm")" || [[ -z "nvm_loc" ]]; then 
	export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
fi

if starship_loc="$(type -p "starship")" || [[ -z "starship_loc" ]]; then 
	eval "$(starship init bash)"
fi
