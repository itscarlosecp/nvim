" Settings
syntax enable          " Enables syntax highlighting
set hidden             " Dont unload buffer when its abandoned
set wrap               " Wrap long lines
set encoding=utf-8     " The encoding displayed
set fileencoding=utf-8 " The encoding written to file
set ignorecase         " Case insensitive search

" Completion
set completeopt=menuone,noselect " How autocomplete options menu
set pumheight=10       " Popup max height
set cmdheight=2        " Gives more space to show messages

" Indentation
set tabstop=2          " Insert 2 spaces for a <TAB> press
set shiftwidth=2       " Change the number of space characters inserted for indentation
set noexpandtab        " Converts spaces to tabs
set autoindent         " Good auto indent
set noswapfile         " No swap file

" Mobility
set number             " Show line numbers
set relativenumber     " Show line relative numbers
set iskeyword+=-       " Treat dash separated words as a word text object
set scrolloff=5        " Scroll before last visible line

" Interface
set formatoptions-=cro " Stop newline continution of comments
set signcolumn=yes     " Always show column sign
set splitbelow         " Horizontal splits will automatically be below
set splitright         " Vertical splits will automatically be to the right
set termguicolors      " 256 color for terminal nvim

" Plug Install
call plug#begin(stdpath('data') . '/plugged')
" LSP & Autocompletion
Plug 'neovim/nvim-lspconfig' 
Plug 'kabouzeid/nvim-lspinstall'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/nvim-compe'

" Syntax
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sheerun/vim-polyglot'

" Interface
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'numtostr/FTerm.nvim'

" Fuzzy Finder
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'glepnir/galaxyline.nvim'

" Utilities
Plug 'jiangmiao/auto-pairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'p00f/nvim-ts-rainbow'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
call plug#end()

" Plug Config
luafile $HOME/.config/nvim/plug/_compe.lua
luafile $HOME/.config/nvim/plug/_fterm.lua
luafile $HOME/.config/nvim/plug/_galaxyline.lua
luafile $HOME/.config/nvim/plug/_lsp.lua
luafile $HOME/.config/nvim/plug/_lspinstall.lua
luafile $HOME/.config/nvim/plug/_nvimtree.lua
luafile $HOME/.config/nvim/plug/_telescope.lua

lua <<EOF
require'colorizer'.setup()
EOF

colorscheme darkgray
hi Normal guibg=NONE ctermbg=NONE
hi pythonSpaceError guibg=NONE ctermbg=NONE

" Keymappings
let mapleader=' '
nnoremap <leader>c :e $HOME/.dotfiles/nvim/init.vim<CR>

nnoremap <leader>e :NvimTreeToggle<CR>
nnoremap <silent> <leader>ff :Telescope find_files<CR>
nnoremap <silent> <C-x> <CMD>lua require('FTerm').toggle()<CR>
tnoremap <silent> <C-x> <CMD>lua require('FTerm').toggle()<CR>

" Move between panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" LSP & Autocompletion
inoremap <silent><expr> <C-.> compe#complete()
inoremap <silent><expr> <CR> compe#confirm('<CR>')
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K  <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> ]g <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> [g <cmd>Lspsaga diagnostic_jump_next<CR>
