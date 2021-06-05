require"nvim-treesitter.configs".setup {
	ensure_installed = "all",
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = 1000,
		colors = {
			"#D4AF37",
			"#DA70D6",
			"#87CEFA"
		},
	},
	autotag = { enable = true },
	highlight = { enable = true },
	indent = {
		enable = true,
		disable = {"c", "cpp"}
	}
}
