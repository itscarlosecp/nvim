local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({"git", "clone", "https://github.com/wbthomason/packer.nvim", install_path})
	execute "packadd packer.nvim"
end

local packer = require "packer"
local use = packer.use

local plugins = function()
	-- TREESITTER & POLYGLOT
	use {
    "nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
  }
	use "sheerun/vim-polyglot"

	-- LSP
	use "neovim/nvim-lspconfig"
	use {
		"kabouzeid/nvim-lspinstall",
		config = function()
			require "_lsp"
		end
	}

	-- DIAGNOSTICS
	use {
		"glepnir/lspsaga.nvim",
    event = "BufWinEnter"
	}

	-- AUTOCOMPLETION
	use {
		"hrsh7th/nvim-compe",
		config = function()
			require "_compe"
		end,
    event = "InsertEnter",
	}

	-- AUTOPAIRS
	use {
    "windwp/nvim-autopairs",
		event = "InsertEnter"
  }

	-- COLORIZER
	use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require "colorizer".setup()
    end,
    event = "BufWinEnter"
  }

	-- NVIMTREE
	use {
		"kyazdani42/nvim-tree.lua",
		config = function()
      require "_nvimtree"
    end,
    requires = {
      "kyazdani42/nvim-web-devicons"
    }
	}

	-- TELESCOPE
	use {
    "nvim-telescope/telescope.nvim",
		config = function()
			require "_telescope"
		end,
    requires = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim"
    }
  }

	-- STATUSLINE
	use {
    "glepnir/galaxyline.nvim",
    config = function()
      require "_galaxyline"
    end,
  }

	-- INTERFACE
	use "rktjmp/lush.nvim"
	use "folke/tokyonight.nvim"

	-- UTILS
	use {
		"junegunn/vim-easy-align",
    event = "BufWinEnter"
	}
	use {
		"tpope/vim-surround",
    event = "BufWinEnter"
	}

	-- PACKER
	use "wbthomason/packer.nvim"
end

packer.startup(plugins)

vim.cmd("autocmd BufWritePost plugins.lua PackerCompile")
