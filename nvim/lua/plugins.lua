return require("packer").startup(function()
	use "wbthomason/packer.nvim"
	-- use "Olical/aniseed"

	-- LSP
	use "neovim/nvim-lspconfig"
	use "kabouzeid/nvim-lspinstall"
	use "nvim-lua/completion-nvim"
	use {"folke/trouble.nvim", requires = {"folke/lsp-colors.nvim"}}

	-- Treesitter
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	use "windwp/nvim-ts-autotag"
	use "p00f/nvim-ts-rainbow"

	-- Interface
	use "numToStr/FTerm.nvim"
	use {"kyazdani42/nvim-tree.lua", requires = {"kyazdani42/nvim-web-devicons",  "ryanoasis/vim-devicons"}}
	use {"nvim-telescope/telescope.nvim", requires = { "nvim-lua/popup.nvim",  "nvim-lua/plenary.nvim"}}
end)

