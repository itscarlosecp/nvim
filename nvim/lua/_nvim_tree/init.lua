vim.g.nvim_tree_ignore = {"node_modules", ".cache", "*.o"}
vim.g.nvim_tree_follow = 1 -- Updates cursor position when entering a file
vim.g.nvim_tree_tab_open = 1 -- Keep explorer open when switching tabs

vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "קּ",
    staged = "",
    unmerged = "",
    renamed = "",
    deleted = "",
    untracked = "",
    ignored = "◌"
  },
  folder = {
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = ""
  }
}

