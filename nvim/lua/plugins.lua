local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	execute 'packadd packer.nvim'
end

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- Conquer of Completion
	use {'neoclide/coc.nvim', branch = 'main'}

	-- Formatting
	use 'nvim-treesitter/nvim-treesitter'
	use 'Chiel92/vim-autoformat'
	use 'JuliaEditorSupport/julia-vim'

	-- Fuzzy Finder
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
	use 'junegunn/fzf.vim'

	-- User Interface
	use {'glepnir/galaxyline.nvim', branch = 'main'}
	use 'kyazdani42/nvim-web-devicons'
	use 'kyazdani42/nvim-tree.lua'

	-- Utilities
	use 'tpope/vim-surround'
	use 'tpope/vim-fugitive'
	use 'luochen1990/rainbow'
	use 'norcalli/nvim-colorizer.lua'

end)
