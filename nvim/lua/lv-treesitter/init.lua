require"nvim-treesitter.configs".setup {
	ensure_installed = "all",
	indent = {
		enable = true
	},
	highlight = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
		max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
		colors = {
			"#D4AF37",
			"#DA70D6",
			"#87CEFA"
		},
	},
	autotag = {
		enable = true,
	},
}
