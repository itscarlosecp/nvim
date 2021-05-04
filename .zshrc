export ZSH="/home/itscarlosecp/.oh-my-zsh"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export EDITOR=nvim
export BROWSER=wslview
export FZF_DEFAULT_COMMAND="rg --files --hidden"
export PATH=$PATH:/usr/local/go/bin

alias dev="cd ~/Documents/Code"
alias niudot="cd ~/Documents/Projects/niudot/niudot-app"
alias dev="cd $HOME/Code"
alias niutek="cd $HOME/niutek"
alias .files="cd $HOME/.dotfiles"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(starship init zsh)"
