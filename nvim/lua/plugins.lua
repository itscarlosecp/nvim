local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require("packer").startup(function()
	use "wbthomason/packer.nvim"

	use "neoclide/coc.nvim"

	use {"nvim-lua/popup.nvim", opt = true}
	use {"nvim-lua/plenary.nvim", opt = true}
	use {"nvim-telescope/telescope.nvim", opt = true}

	use {"tpope/vim-surround", opt = true}
	use {"luochen1990/rainbow", opt = true}
	use {"tpope/vim-fugitive", opt = true}
	use {"JuliaEditorSupport/julia-vim", opt = true}

	use {"nvim-treesitter/nvim-treesitter", opt = true}
	use {"sheerun/vim-polyglot", opt = true}
	use {"Chiel92/vim-autoformat", opt = true}

	use {'junegunn/fzf', dir = '~/.fzf', run = './install --all' }
	use {'junegunn/fzf.vim'}

	use {"kyazdani42/nvim-web-devicons", opt = true}
	use {"ryanoasis/vim-devicons", opt = true}
	use {"vim-airline/vim-airline", opt = true}
	use {"tomasiser/vim-code-dark", opt = true}

	use {"kyazdani42/nvim-tree.lua", opt = true}
end)
