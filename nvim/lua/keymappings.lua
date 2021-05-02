local remap = vim.api.nvim_set_keymap

remap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

remap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
remap('n', '<Leader>p', ':Files<CR>', {noremap = true, silent = true})

remap('n', '<C-h>', '<C-w>h', {silent = true})
remap('n', '<C-j>', '<C-w>j', {silent = true})
remap('n', '<C-k>', '<C-w>k', {silent = true})
remap('n', '<C-l>', '<C-w>l', {silent = true})
