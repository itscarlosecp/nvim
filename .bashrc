export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/itscarlosecp/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/home/itscarlosecp/anaconda3/etc/profile.d/conda.sh" ]; then
		. "/home/itscarlosecp/anaconda3/etc/profile.d/conda.sh"
	else
		export PATH="/home/itscarlosecp/anaconda3/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias dev="cd $HOME/Code"
alias niutek="cd $HOME/niutek"
alias .files="cd $HOME/.dotfiles"

export EDITOR=nvim
export BROWSER=wslview
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export PATH=$PATH:/usr/local/go/bin

eval "$(starship init bash)"
