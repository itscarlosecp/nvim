syntax on
set fileencoding=utf-8
set hidden
set ignorecase

set noexpandtab
set autoindent
set tabstop=2
set shiftwidth=2

set number
set rnu
set scrolloff=5
set splitright

set termguicolors
set noswapfile
set signcolumn=yes

colorscheme oceanic
hi Normal guibg=NONE ctermbg=NONE

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

