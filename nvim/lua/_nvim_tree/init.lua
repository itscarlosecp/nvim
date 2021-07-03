vim.g.nvim_tree_icons = {
	default = '',
	symlink = '',
	git = {
		unstaged = 'קּ',
		staged = '',
		unmerged = '',
		renamed = '',
		deleted = '',
		untracked = '',
		ignored = '◌'
	},
	folder = {
		default = '',
		open = '',
		empty = '',
		empty_open = '',
		symlink = ''
	}
}

local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
	-- Mappings
	['<CR>']           = tree_cb('edit'),
	['<C-v>']          = tree_cb('vsplit'),
	['<C-x>']          = tree_cb('split'),
	['<C-t>']          = tree_cb('tabnew'),
	['<BS>']           = tree_cb('close_node'),
	['<S-CR>']         = tree_cb('close_node'),
	['I']              = tree_cb('toggle_ignored'),
	['H']              = tree_cb('toggle_dotfiles'),
	['R']              = tree_cb('refresh'),
	['a']              = tree_cb('create'),
	['d']              = tree_cb('remove'),
	['r']              = tree_cb('full_rename'),
	['x']              = tree_cb('cut'),
	['y']              = tree_cb('copy'),
	['p']              = tree_cb('paste'),
}
