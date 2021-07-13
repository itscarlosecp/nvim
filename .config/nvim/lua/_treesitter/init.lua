require "nvim-treesitter.configs".setup {
	ensure_installed = "maintained",
	indent = { enable = false },
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true 
	}
}

