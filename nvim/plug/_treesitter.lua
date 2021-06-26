require'nvim-treesitter.configs'.setup {
	ensure_installed = 'all',
	highlight = { enable = true },
	indent = { enable = true, disable = {'cpp'} },
	rainbow = {
		enable = true,
		extended_mode = false, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
		max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
		colors = {
			'#D4AF37',
			'#DA70D6',
			'#87CEFA'
		},
	},
}
