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
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  }
}
