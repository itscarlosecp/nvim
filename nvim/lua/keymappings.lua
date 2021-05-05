local map = vim.api.nvim_set_keymap
local defaults = {noremap = true, silent = true}

map('n', '<Space>', '<NOP>', defaults)
vim.g.mapleader = ' '

map('n', '<Leader>e', ':NvimTreeToggle<CR>', defaults)
map('n', '<Leader>p', ':Telescope find_files<CR>', defaults)

map('n', '<C-h>', '<C-w>h', {silent = true})
map('n', '<C-j>', '<C-w>j', {silent = true})
map('n', '<C-k>', '<C-w>k', {silent = true})
map('n', '<C-l>', '<C-w>l', {silent = true})

map('n', '<leader>T', '<CMD>lua require("FTerm").toggle()<CR>', defaults)
map('t', '<leader>T', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', defaults)
