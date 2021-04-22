local actions = require("telescope.actions")

require("telescope").setup {
	defaults = {
		find_command = {'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u'},
		color_devicons = true,
		shorten_path = true,
		mappings = {
			i = {
				["<C-j>"] = actions.move_selection_next,
				["<C-k>"] = actions.move_selection_previous,
				["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
				["<esc>"] = actions.close,

				["<CR>"] = actions.select_default + actions.center
			},
		}
	}
}
