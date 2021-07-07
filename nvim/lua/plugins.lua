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
  -- LSP
  use {
    "neovim/nvim-lspconfig",
    requires = {
      "kabouzeid/nvim-lspinstall"
    }
  }
  use {
    "hrsh7th/nvim-compe",
    event = "InsertEnter",
    config = function()
      require "_nvim_compe"
    end
  }
  use "glepnir/lspsaga.nvim"

  -- SYNTAX HIGHLIGHT
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require "colorizer".setup()
    end
  }
  use "sheerun/vim-polyglot"

  -- NVIMTREE
  use {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require "_nvim_tree"
    end,
    requires = {
      "kyazdani42/nvim-web-devicons"
    }
  }

  -- TELESCOPE
  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim"
    }
  }

  -- INTERFACE
  use {
    "numtostr/FTerm.nvim",
    event = "BufWinEnter",
    config = function()
      require "_fterm"
    end
  }
  use "rktjmp/lush.nvim"
  use {
    "glepnir/galaxyline.nvim",
    branch = "main"
  }

  -- ACTIVE UTILITIES
  use "junegunn/vim-easy-align"
  use "mhartington/formatter.nvim"
  use "mattn/emmet-vim"
  use "tpope/vim-surround"

  -- PASIVE UTILITIES
  use "f-person/git-blame.nvim"
  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require "_autopairs"
    end
  }

  -- PACKER
  use "wbthomason/packer.nvim"
end

packer.startup(plugins)

vim.cmd("autocmd BufWritePost plugins.lua PackerCompile")
