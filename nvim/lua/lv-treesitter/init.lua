require"nvim-treesitter.configs".setup {
	ensure_installed = O.treesitter.ensure_installed,
	ignore_installed = O.treesitter.ignore_installed,

	autotag = { enable = true, },
	highlight = { enable = true, },
	indent = { enable = O.treesitter.enable_indent },
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
}

