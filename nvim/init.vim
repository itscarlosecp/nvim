call plug#begin('$HOME/.nvim/plugged')
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Formatting
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'
Plug 'Chiel92/vim-autoformat'
Plug 'JuliaEditorSupport/julia-vim'

" Fuzzy Finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" User Interface
Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Utilities
Plug 'numToStr/FTerm.nvim'
Plug 'blackCauldron7/surround.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'p00f/nvim-ts-rainbow'
Plug 'tpope/vim-fugitive'
Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
call plug#end()

source $HOME/.config/nvim/vimscript/settings.vim
source $HOME/.config/nvim/vimscript/keymappings.vim
source $HOME/.config/nvim/vimscript/formatting.vim

source $HOME/.config/nvim/vimscript/lv-coc.vim
luafile $HOME/.config/nvim/lua/lv-treesitter.lua
luafile $HOME/.config/nvim/lua/lv-galaxyline.lua
luafile $HOME/.config/nvim/lua/lv-surround.lua
luafile $HOME/.config/nvim/lua/lv-fterm.lua
luafile $HOME/.config/nvim/lua/lv-colorizer.lua
luafile $HOME/.config/nvim/lua/lv-pairs.lua

colorscheme nvcode
hi Normal guibg=NONE ctermbg=NONE
