call plug#begin('$HOME/.nvim/plugged')
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Formatting
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'Chiel92/vim-autoformat'
Plug 'JuliaEditorSupport/julia-vim'

" Fuzzy Finder
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" User Interface
Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Utilities
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'luochen1990/rainbow'
Plug 'norcalli/nvim-colorizer.lua'

source $HOME/.config/nvim/vimscript/settings.vim
source $HOME/.config/nvim/vimscript/keymappings.vim
source $HOME/.config/nvim/vimscript/lv-coc.vim

luafile $HOME/.config/nvim/lua/lv-treesitter.lua
luafile $HOME/.config/nvim/lua/lv-colorizer.lua
luafile $HOME/.config/nvim/lua/lv-galaxyline.lua
