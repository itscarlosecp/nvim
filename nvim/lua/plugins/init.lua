local packer = require"packer"
local use = packer.use

local plugins = function()
	use "wbthomason/packer.nvim"
	use {"neoclide/coc.nvim", branch = "release"}

	-- LSP && TreeSitter
	use {
		"kabouzeid/nvim-lspinstall",
		requires = {"neovim/nvim-lspconfig"}
	}
	use {
		"nvim-treesitter/nvim-treesitter",
		requires = {
			"nvim-treesitter/playground",
			"p00f/nvim-ts-rainbow",
			"windwp/nvim-ts-autotag"
		}
	}
	-- use "sheerun/vim-polyglot"

	-- Interface
	use {
		"glepnir/galaxyline.nvim",
		branch = "main",
		requires = {"kyazdani42/nvim-web-devicons"}
	}
	use "numtostr/FTerm.nvim"
	use {
		"kyazdani42/nvim-tree.lua",
		requires = {"kyazdani42/nvim-web-devicons"}
	}
	use "itscarlosecp/colorschemes"

	-- Fuzzy Finder
	use {
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/popup.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-media-files.nvim"
		}
	}

	-- Utilities
	use "windwp/nvim-autopairs"
	use "norcalli/nvim-colorizer.lua"
	use "easymotion/vim-easymotion"
	use "tpope/vim-surround"
	use "f-person/git-blame.nvim"
	use "Chiel92/vim-autoformat"
end

packer.startup(plugins)
