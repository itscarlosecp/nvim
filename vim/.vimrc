" Settings
syntax enable          " Enables syntax highlighting
set hidden             " Dont unload buffer when its abandoned
set nowrap             " Doot wrap long lines
set ignorecase         " Case insensitive search

" Indentation
set tabstop=2          " Insert 2 spaces for a <TAB> press
set shiftwidth=2       " Change the number of space characters inserted for indentation
set noexpandtab        " Converts spaces to tabs
set autoindent         " Good auto indent

" Editing
set number             " Show line numbers
set relativenumber     " Show line relative numbers
set scrolloff=5        " Scroll before last visible line
set iskeyword+=-       " Treat dash separated words as a word text object
set formatoptions-=cro " Stop newline continution of comments

" Interface
set splitbelow         " Horizontal splits will automatically be below
set splitright         " Vertical splits will automatically be to the right
set termguicolors      " 256 color for terminal nvim

" Plug Install
call plug#begin('$HOME/.vim/plugged')
" Syntax
Plug 'sheerun/vim-polyglot'

" Interface
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Utilities
Plug 'tpope/vim-surround'
call plug#end()

set bg=dark
colorscheme gruvbox
autocmd FileType yaml,yml let b:autoformat_autoindent=0

let mapleader=' '
nnoremap <leader>e :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
nnoremap <leader>ff :Files<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

