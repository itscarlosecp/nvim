export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export EDITOR=nvim
export BROWSER=wslview
export HISTCONTROL=ignoreboth
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export PATH=/usr/local/go/bin:/usr/local/miniconda3/bin:$PATH
export LSPINSTALL_DIR=$HOME/.local/share/nvim/lspinstall

alias ..="cd .."
alias ls="ls --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias la="ls -Aogh --group-directories-first"

alias dev="cd $HOME/Code"
alias .files="cd $HOME/.dotfiles"
alias uba="cd $HOME/Code/UBA"
alias algo="gcc -std=c99 -Wall -Wconversion -Werror"

sb() {
	if [ ! -d "$HOME/Code/sandbox" ]
	then
		mkdir "$HOME/Code/sandbox"
	fi
	nvim "$HOME/Code/sandbox/some.$1"
}

eval "$(starship init bash)"
