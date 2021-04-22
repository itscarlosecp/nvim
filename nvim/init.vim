" Plugins
call plug#begin('~/.nvim/plugged')
	" Conquer of Completion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" Utilities
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'tpope/vim-surround'
	Plug 'luochen1990/rainbow'
	Plug 'tpope/vim-fugitive'
	Plug 'kristijanhusak/vim-carbon-now-sh'

	" Fuzzy Finder
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	" Interface
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'ryanoasis/vim-devicons'
	Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
call plug#end()

source $HOME/.config/nvim/vimscript/settings.vim
source $HOME/.config/nvim/vimscript/keymappings.vim
source $HOME/.config/nvim/vimscript/pl-coc.vim
luafile $HOME/.config/nvim/lua/pl-treesitter.lua
luafile $HOME/.config/nvim/lua/pl-telescope.lua
luafile $HOME/.config/nvim/lua/pl-galaxyline.lua

colorscheme nvcode
hi Normal guibg=NONE ctermbg=NONE
let g:rainbow_active = 1

let g:carbon_now_sh_browser = 'wslview'
