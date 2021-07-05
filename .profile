export EDITOR=nvim
export BROWSER=wslview
export HISTCONTROL=ignoreboth

# PATH exports
export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

alias ..="cd .."
alias ls="ls --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias la="ls -Aogh --group-directories-first"

alias .files="cd $HOME/.dotfiles"

count() {
	find . -name "*.$1" | xargs wc -l
}
