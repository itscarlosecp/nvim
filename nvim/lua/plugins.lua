local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	execute 'packadd packer.nvim'
end

return require('packer').startup(function()
	-- MAIN PACKAGES --
	use 'wbthomason/packer.nvim'
	use 'neoclide/coc.nvim'

	-- SYNTAX --
	use 'nvim-treesitter/nvim-treesitter'
	use 'JuliaEditorSupport/julia-vim'

	-- UTILITIES --
	use 'Chiel92/vim-autoformat'
	use 'numToStr/FTerm.nvim'
	use 'blackCauldron7/surround.nvim'
	use 'norcalli/nvim-colorizer.lua'
	use 'p00f/nvim-ts-rainbow'
	use 'tpope/vim-fugitive'
	use 'windwp/nvim-autopairs'
	use 'windwp/nvim-ts-autotag'

	-- FUZZY FINDER --
	use {'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/popup.nvim',  'nvim-lua/plenary.nvim'}}

	-- EXPLORER & STATUSBAR --
	use {'glepnir/galaxyline.nvim', branch = 'main', }
	use {'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons',  'ryanoasis/vim-devicons'}}
end)
