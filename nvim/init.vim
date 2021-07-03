set nu
set rnu
set tabstop=2
set shiftwidth=2
set noexpandtab
set autoindent
set completeopt=menuone,noselect
set termguicolors

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

" colorscheme oceanic
hi Normal guibg=NONE ctermbg=NONE
hi pythonSpaceError guibg=NONE ctermbg=NONE
