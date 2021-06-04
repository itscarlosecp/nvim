local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	execute 'packadd packer.nvim'
end

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	use 'glepnir/lspsaga.nvim'

	-- Syntax
	use 'nvim-treesitter/nvim-treesitter'
	use 'windwp/nvim-autopairs'
	use 'windwp/nvim-ts-autotag'
	use 'norcalli/nvim-colorizer.lua'
	use 'p00f/nvim-ts-rainbow'

	-- Utilities
	use 'blackCauldron7/surround.nvim'
	use 'tpope/vim-fugitive'
	use 'folke/trouble.nvim'
	
	-- Fuzzy Finder
	use {'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/popup.nvim',  'nvim-lua/plenary.nvim'}}

	-- Interface
	use 'numToStr/FTerm.nvim'
	use {'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons',  'ryanoasis/vim-devicons'}}
end)

