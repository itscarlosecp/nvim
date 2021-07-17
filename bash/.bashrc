### GLOBALS ###
# Variables exports
export EDITOR=nvim
export TERM=kitty
export HISTCONTROL=ignoreboth

# PATH exports
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"

# Vi Mode
set -o vi

### ALIASES ###
# Navigation
alias ..="cd .."
alias ...="cd ../.."

# LS 
if lsd_loc="$(type -p "lsd")" || [[ -z "lsd_loc" ]]; then 
	alias ls="lsd"
else
	alias ls="ls --color=auto --group-directories-first"
fi

# Quick access
alias .files="cd $HOME/.dotfiles"
alias dev="cd $HOME/dev"
alias uba="cd $HOME/UBA"

# APPLICATIONS 
# Neovim
alias vim="nvim"
alias nvim-perf="nvim --startuptime startup.log -c exit && tail -100 startup.log"

# Node Version Manager (NVM) 
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

# Starship Prompt 
if starship_loc="$(type -p "starship")" || [[ -z "starship_loc" ]]; then 
	eval "$(starship init bash)"
else
	echo "Starship not installed"
fi

