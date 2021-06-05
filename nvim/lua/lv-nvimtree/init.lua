local tree_cb = require"nvim-tree.config".nvim_tree_callback
vim.g.nvim_tree_bindings = {
	["<CR>"]           = tree_cb("edit"),
	["l"]              = tree_cb("edit"),
	["<2-LeftMouse>"]  = tree_cb("edit"),
	["<2-RightMouse>"] = tree_cb("cd"),
	["v"]              = tree_cb("vsplit"),
	["s"]              = tree_cb("split"),
	["I"]              = tree_cb("toggle_ignored"),
	["H"]              = tree_cb("toggle_dotfiles"),
	["R"]              = tree_cb("refresh"),
	["a"]              = tree_cb("create"),
	["d"]              = tree_cb("remove"),
	["r"]              = tree_cb("full_rename"),
	["<C-r>"]          = tree_cb("rename"),
	["x"]              = tree_cb("cut"),
	["c"]              = tree_cb("copy"),
	["p"]              = tree_cb("paste"),
}

vim.g.nvim_tree_ignore = O.nvimtree.ignored_patterns

vim.g.nvim_tree_icons = {
	default = "",
	symlink = "",
	git = {unstaged = "", staged = "✓", unmerged = "", renamed = "➜", untracked = ""},
	folder = {default = "", open = "", empty = "", empty_open = "", symlink = ""}
}

