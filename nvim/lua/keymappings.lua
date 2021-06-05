local map = vim.api.nvim_set_keymap
local defaults = {noremap = true, silent = true}

vim.g.mapleader = " " 
-- map("n", "<Space>", "<NOP>", defaults)
map("i", "jj", "<ESC>", {noremap = true, silent = true})

map("n", "<Leader>e", ":NvimTreeToggle<CR>", defaults)
map("n", "<Leader>ff", ":Telescope find_files<CR>", defaults)

map("n", "<C-h>", "<C-w>h", {silent = true})
map("n", "<C-j>", "<C-w>j", {silent = true})
map("n", "<C-k>", "<C-w>k", {silent = true})
map("n", "<C-l>", "<C-w>l", {silent = true})

map("n", "T", "<CMD>lua require('FTerm').toggle()<CR>", defaults)
map("t", "T", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>", defaults)
