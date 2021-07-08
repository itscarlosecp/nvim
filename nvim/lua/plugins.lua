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
	-- TREESITTER
	use {
    "nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
  }

	-- LSP
	use "neovim/nvim-lspconfig"
	use {
		"kabouzeid/nvim-lspinstall",
		event = "BufRead"
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
    config = function()
      require "nvim-autopairs".setup()
    end,
    event = "InsertEnter"
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

	-- PACKER
	use "wbthomason/packer.nvim"

	-- INTERFACE
	use "folke/tokyonight.nvim"
end

packer.startup(plugins)

vim.cmd("autocmd BufWritePost plugins.lua PackerCompile")
