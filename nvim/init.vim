syntax on

set autoindent
set smartindent
set noexpandtab

set tabstop=4
set shiftwidth=4

set wrap
set linebreak
set nolist

set number
set relativenumber
set encoding=utf8
set scrolloff=5

set splitright

let mapleader=" "
nnoremap <leader>c :e ~/.config/nvim/init.vim<CR>

call plug#begin('~/.nvim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'tpope/vim-surround'
	Plug 'luochen1990/rainbow'
	Plug 'sheerun/vim-polyglot'
	Plug 'tpope/vim-fugitive'
	Plug 'nvie/vim-flake8'
	Plug 'Chiel92/vim-autoformat'

	Plug 'morhetz/gruvbox'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
	Plug 'junegunn/fzf.vim'
call plug#end()

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

nnoremap <C-p> :Files<CR>

let g:coc_global_extensions = ['coc-pairs', 'coc-json', 'coc-python', 'coc-explorer', 'coc-tslint', 'coc-tsserver', 'coc-prettier', 'coc-emmet']

noremap <C-e> :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer')

augroup MyCocExplorer
	autocmd!
	autocmd VimEnter * sil! au! FileExplorer *
	autocmd BufEnter * let d = expand('%') | if isdirectory(d) | bd | exe 'CocCommand explorer ' . d | endif
augroup END

let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:rainbow_active = 1
