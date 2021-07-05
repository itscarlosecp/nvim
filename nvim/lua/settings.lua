vim.cmd("syntax enable")
vim.o.hidden = true
vim.wo.wrap = false
vim.cmd("set encoding=utf-8")
vim.cmd("set fileencoding=utf-8")
vim.o.ignorecase = true

vim.o.completeopt = "menuone,noselect"
vim.o.pumheight = 10
vim.o.cmdheight = 2

vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = false
vim.autoindent = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.scrolloff = 5

vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
