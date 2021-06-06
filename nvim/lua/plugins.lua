return require"packer".startup(function()
	use "wbthomason/packer.nvim"

	-- LSP
	use "neovim/nvim-lspconfig"
	use "kabouzeid/nvim-lspinstall"
	use {"folke/trouble.nvim", requires = {"folke/lsp-colors.nvim"}}
	use "hrsh7th/nvim-compe"
	-- use "tzachar/compe-tabnine"

	-- Treesitter
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
	use "norcalli/nvim-colorizer.lua"
	use "p00f/nvim-ts-rainbow"
	use "nvim-treesitter/playground"

	-- Interface
	use "numToStr/FTerm.nvim"
	use {"kyazdani42/nvim-tree.lua", requires = {"kyazdani42/nvim-web-devicons",  "ryanoasis/vim-devicons"}}
	use {"nvim-telescope/telescope.nvim", requires = { "nvim-lua/popup.nvim",  "nvim-lua/plenary.nvim"}}
	use {"glepnir/galaxyline.nvim", branch = 'main', requires = { "nvim-lua/popup.nvim" }}
	use "itscarlosecp/colorschemes"

	-- Utilities
	use "tpope/vim-surround"
	use "windwp/nvim-autopairs"
	use "windwp/nvim-ts-autotag"
end)

