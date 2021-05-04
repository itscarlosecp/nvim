export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export EDITOR=nvim
export BROWSER=wslview
export HISTCONTROL=ignoreboth

export FZF_DEFAULT_COMMAND="rg --files --hidden"
export PATH=$PATH:/usr/local/go/bin

alias ..="cd .."
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias la="ls -A"
alias rm="rm -i"

alias dev="cd $HOME/Code"
alias niutek="cd $HOME/niutek"
alias .files="cd $HOME/.dotfiles"
alias uba="cd $HOME/Code/UBA"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/itscarlosecp/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/home/itscarlosecp/miniconda3/etc/profile.d/conda.sh" ]; then
		. "/home/itscarlosecp/miniconda3/etc/profile.d/conda.sh"
	else
		export PATH="/home/itscarlosecp/miniconda3/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<

. "$HOME/.cargo/env"
eval "$(starship init bash)"
