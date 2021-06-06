local packer = require"packer"
local use = packer.use

-- Plugins:
-- Packer (Plugin manager)
-- Coc.nvim (LSP IntelliSense)
-- Trouble (Better diagnostics)
-- LSPInstall (Easy LS installation)
-- TreeSitter (Buggy but better syntax highlight)
-- Galaxyline (Statusbar)
-- FTerm (Floating terminal)
-- NvimTree (File explorer)
-- Telescope (Fuzzy finder)
-- EasyAlign (Custom alignment)
-- EasyMotion (Better and faster movement)
-- VimSurround (Surround)
-- Nvim-Colorizer (Color color codes)

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
			"p00f/nvim-ts-rainbow"
		}
	}
	use "folke/trouble.nvim"

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
	use "junegunn/vim-easy-align"
	use "easymotion/vim-easymotion"
	use "tpope/vim-surround"
	use "norcalli/nvim-colorizer.lua"
end

packer.startup(plugins)
