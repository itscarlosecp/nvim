set shiftwidth=4
set autoindent
set smartindent
set relativenumber

call plug#begin('~/.nvim/plugged')
    Plug 'dracula/vim'
call plug#end()

colorscheme dracula
hi Normal guibg=NONE ctermbg=NONE
