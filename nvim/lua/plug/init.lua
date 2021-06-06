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
			"p00f/nvim-ts-rainbow" -- Bracker colorizer
		}
	}

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
	use "junegunn/vim-easy-align" -- Start comments in a single column
	use "easymotion/vim-easymotion" -- Easymotion
	use "tpope/vim-surround" -- vim-surround
	use "norcalli/nvim-colorizer.lua" -- Color codes colorizer
end

packer.startup(plugins)
