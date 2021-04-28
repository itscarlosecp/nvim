call plug#begin('~/.nvim/plugged')
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Utilities
Plug 'sheerun/vim-polyglot'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fugitive'
Plug 'JuliaEditorSupport/julia-vim'

" Formatting
Plug 'Chiel92/vim-autoformat'

" Fuzzy Finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Interface
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
call plug#end()

source $HOME/.config/nvim/vimscript/settings.vim
source $HOME/.config/nvim/vimscript/keymappings.vim
source $HOME/.config/nvim/vimscript/pl-coc.vim
luafile $HOME/.config/nvim/lua/pl-treesitter.lua
luafile $HOME/.config/nvim/lua/pl-telescope.lua

colorscheme nvcode_mine
hi Normal guibg=NONE ctermbg=NONE
let g:airline_theme='codedark'

let g:rainbow_active = 1

au BufRead,BufNewFile *.jl set filetype=julia
au BufWrite * :Autoformat
