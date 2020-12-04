#
#                            88                                   
#                            88                                   
#                            88                                   
#      888888888  ,adPPYba,  88,dPPYba,   8b,dPPYba,   ,adPPYba,  
#           a8P"  I8[    ""  88P'    "8a  88P'   "Y8  a8"     ""  
#        ,d8P'     `"Y8ba,   88       88  88          8b          
# 888  ,d8"       aa    ]8I  88       88  88          "8a,   ,aa  
# 888  888888888  `"YbbdP"'  88       88  88           `"Ybbd8"'  
#
# =========================================================================== #
# = * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * = #
# =========================================================================== #
#
# Welcome to my .zshrc config file. There is not much to say about this file.
# Its pretty much the one that is auto-generated when you install oh my zsh.
#
# =========================================================================== #
#
#   * Github Username: itscarlosecp
#   * Repository: https://github.com/itscarlosecp/dotfiles
#
# =========================================================================== #
# = * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * = #
# =========================================================================== #


# =========================================================================== #
# ============================ Oh My Zsh Globals ============================ #
# =========================================================================== #

ZSH_THEME="robbyrussell"
export ZSH="/home/itscarlosecp/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


# =========================================================================== #
# ============================ Oh My Zsh Plugins ============================ #
# =========================================================================== #

plugins=(git)


# =========================================================================== #
# ========================= Other Program's Configs ========================= #
# =========================================================================== #

# Node Version Mnager (NVM)

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# Conda Auto Environment Activation

source /home/itscarlosecp/.conda/conda-auto-env/conda_auto_env.sh


# Conda Initialize 

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

