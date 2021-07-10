export EDITOR=nvim
export TERM=kitty
export HISTCONTROL=ignoreboth

# PATH exports
export PATH=/usr/local/go/bin:$PATH

alias ..="cd .."

if lsd_loc="$(type -p "lsd")" || [[ -z "lsd_loc" ]]; then 
	alias ls="lsd"
else
	alias ls="ls --color=auto --group-directories-first"
fi

alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias .files="cd $HOME/.dotfiles"
alias dev="cd $HOME/dev"
alias uba="cd $HOME/UBA"
alias vim="nvim"
alias nvim-perf="nvim --startuptime startup.log -c exit && tail -100 startup.log"

count() {
	find . -name "*.$1" | xargs wc -l
}

# This load NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

# This loads starship
if starship_loc="$(type -p "starship")" || [[ -z "starship_loc" ]]; then 
	eval "$(starship init zsh)"
else
	echo "Starship not installed"
fi
