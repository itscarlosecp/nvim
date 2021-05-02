" Settings
" Global
syntax on
set encoding=utf8
set hidden
" Not working in WSL
" set clipboard="unnamedplus"

" Formatting
set noexpandtab " Indent with tabs instead of spaces
set tabstop=2 " Tab character width
set shiftwidth=2 " Indent spaces when using > or <
set smarttab " Use shifwidth value as tabstop value

" Interface
set number
set relativenumber
set scrolloff=5
set splitright

set termguicolors

" Disable comment on new-line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
