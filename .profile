export EDITOR=nvim
export BROWSER=wslview
export HISTCONTROL=ignoreboth
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export LSPINSTALL_DIR=$HOME/.local/share/nvim/lspinstall
export PATH=/usr/local/go/bin:$PATH

alias ..="cd .."
alias ls="ls --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias la="ls -Aogh --group-directories-first"

alias dev="cd $HOME/Code"
alias dsa="cd $HOME/Code/dsa"
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
