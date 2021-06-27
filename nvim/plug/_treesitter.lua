require'nvim-treesitter.configs'.setup {
	ensure_installed = 'all',
	autotag = { enable = true },
	highlight = { enable = true },
	rainbow = {
		enable = true,
		max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
		colors = {
			'#D4AF37',
			'#DA70D6',
			'#87CEFA'
		},
	},
}
