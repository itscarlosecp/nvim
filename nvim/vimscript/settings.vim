" Settings
" Global
syntax on
set encoding=utf8
set hidden
" Not working in WSL
" set clipboard="unnamedplus"

" Formatting
set autoindent
set smartindent
set noexpandtab
set tabstop=2
set shiftwidth=2
set wrap
set linebreak
set nolist

" Interface
set number
set relativenumber
set scrolloff=5
set splitright

" Disable comment on new-line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
