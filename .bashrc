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

eval "$(starship init bash)"
