" Plugins
function! BuildComposer(info)
	if a:info.status != 'unchanged' || a:info.force
		if has('nvim')
			!cargo build --release --locked
		else
			!cargo build --release --locked --no-default-features --features json-rpc
		endif
	endif
endfunction

call plug#begin('~/.nvim/plugged')
" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Utilities
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-fugitive'
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" Formatting
Plug 'Chiel92/vim-autoformat'

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
luafile $HOME/.config/nvim/lua/pl-galaxyline.lua
luafile $HOME/.config/nvim/lua/pl-telescope.lua

colorscheme nvcode
hi Normal guibg=NONE ctermbg=NONE
let g:rainbow_active = 1

au BufRead,BufNewFile *.jl set filetype=julia
au BufWrite * :Autoformat

autocmd FileType yml,yaml let b:autoformat_autoindent=0
autocmd FileType yml,yaml let g:autoformat_retab = 0
