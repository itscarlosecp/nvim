require"nvim-treesitter.configs".setup {
	ensure_installed = "all",
	autotag = { enable = true },
	highlight = { enable = true },
	indent = {
		enable = true,
		disable = {"c", "cpp"}
	},
	rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
		disable = {"c", "cpp"}
  }
}
