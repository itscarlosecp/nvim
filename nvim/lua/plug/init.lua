local packer = require"packer"
local use = packer.use

local plugins = function()
	use "wbthomason/packer.nvim"
	use {"neoclide/coc.nvim", branch = "release"}

	-- Language Server Provider
	use {
		"neovim/nvim-lspconfig",
		requires = {"kabouzeid/nvim-lspinstall"}
	}

	-- Interface
	use {
		"kyazdani42/nvim-tree.lua",
		requires = {"kyazdani42/nvim-web-devicons"}
	}
	use "numtostr/FTerm.nvim"

	-- Fuzzy Finder
	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}
end

packer.startup(plugins)
