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
set splitbelow         " Horizontal splits will automatically be below
set splitright         " Vertical splits will automatically be to the right
set termguicolors      " 256 color for terminal nvim

call plug#begin(stdpath('data') . '/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'norcalli/nvim-colorizer.lua'
Plug 'windwp/nvim-autopairs'
Plug 'sheerun/vim-polyglot'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'rktjmp/lush.nvim'
Plug 'numtostr/FTerm.nvim'
Plug 'glepnir/galaxyline.nvim'

call plug#end()

source $HOME/.config/nvim/maps.vim
lua require'_autopairs'
lua require'_colorizer'
lua require'_fterm'
lua require'_lsp'
lua require'_lsp_saga'
lua require'_nvim_compe'
lua require'_telescope'
lua require'_treesitter'

colo oceanic
command GenerateColo lua require'lush'.export_to_buffer(require'_lush_theme.oceanic')

hi Normal guibg=NONE ctermbg=NONE
hi pythonSpaceError guibg=NONE ctermbg=NONE
