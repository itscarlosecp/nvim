" Settings
syntax enable          " Enables syntax highlighting
set hidden             " Dont unload buffer when its abandoned
set wrap               " Wrap long lines
set encoding=utf-8     " The encoding displayed
set fileencoding=utf-8 " The encoding written to file
set ignorecase         " Case insensitive search

" Interface
set number             " Show line numbers
set relativenumber     " Show line relative numbers
set pumheight=10       " Popup max height
set cmdheight=2        " Gives more space to show messages
set iskeyword+=-       " Treat dash separated words as a word text object
set formatoptions-=cro " Stop newline continution of comments
set signcolumn=yes     " Always show column sign
set splitbelow         " Horizontal splits will automatically be below
set splitright         " Vertical splits will automatically be to the right
set termguicolors      " 256 color for terminal nvim

" Others
set tabstop=2          " Insert 2 spaces for a <TAB> press
set shiftwidth=2       " Change the number of space characters inserted for indentation
set noexpandtab        " Converts spaces to tabs
set autoindent         " Good auto indent
set scrolloff=5        " Scroll before last visible line
set updatetime=300     " Faster completion
set timeoutlen=500     " Listening time for a sequence
set noswapfile         " No swap file

" Plug Install
call plug#begin(stdpath('data') . '/plugged')
" LSP & Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sheerun/vim-polyglot'

" Interface
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'numtostr/FTerm.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'glepnir/galaxyline.nvim'
Plug 'morhetz/gruvbox'

" Utilities
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
call plug#end()

" Plug Config
source $HOME/.config/nvim/plug/_coc.vim
luafile $HOME/.config/nvim/plug/_colorizer.lua
luafile $HOME/.config/nvim/plug/_fterm.lua
luafile $HOME/.config/nvim/plug/_galaxyline.lua
luafile $HOME/.config/nvim/plug/_nvimtree.lua
luafile $HOME/.config/nvim/plug/_telescope.lua
luafile $HOME/.config/nvim/plug/_treesitter.lua

colorscheme darkgray
hi Normal guibg=NONE ctermbg=NONE
hi pythonSpaceError guibg=NONE ctermbg=NONE
autocmd FileType yaml,yml let b:autoformat_autoindent=0
au BufWrite * :Autoformat

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

