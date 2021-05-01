call plug#begin('~/.nvim/plugged')
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Utilities
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fugitive'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'windwp/nvim-autopairs'
Plug 'tpope/vim-surround'

" Formatting
Plug 'Chiel92/vim-autoformat'
Plug 'Chiel92/vim-autoformat'

" Fuzzy Finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Interface
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'tomasiser/vim-code-dark'
call plug#end()

source $HOME/.config/nvim/vimscript/settings.vim
source $HOME/.config/nvim/vimscript/keymappings.vim
source $HOME/.config/nvim/vimscript/formatting.vim
source $HOME/.config/nvim/vimscript/colorscheme.vim
source $HOME/.config/nvim/vimscript/pl-coc.vim

luafile $HOME/.config/nvim/lua/pl-treesitter.lua
luafile $HOME/.config/nvim/lua/pl-telescope.lua
" luafile $HOME/.config/nvim/lua/pl-nvimtree.lua

