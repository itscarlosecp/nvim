local map = vim.api.nvim_set_keymap
local defaults = {noremap = true, silent = true}

map('n', '<Space>', '<NOP>', defaults)
vim.g.mapleader = ' '
map('i', 'jj', '<ESC>', {noremap = true, silent = true})

map('n', '<Leader>e', ':NvimTreeToggle<CR>', defaults)
map('n', '<Leader>ff', ':Telescope find_files<CR>', defaults)

map('n', '<C-h>', '<C-w>h', {silent = true})
map('n', '<C-j>', '<C-w>j', {silent = true})
map('n', '<C-k>', '<C-w>k', {silent = true})
map('n', '<C-l>', '<C-w>l', {silent = true})

map('n', 'T', '<CMD>lua require("FTerm").toggle()<CR>', defaults)
map('t', 'T', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', defaults)

vim.cmd('inoremap <silent><expr> <C-Space> compe#complete()')
vim.cmd("inoremap <silent><expr> <CR>      compe#confirm('<CR>')")
vim.cmd("inoremap <silent><expr> <C-e>     compe#close('<C-e>')")
vim.cmd("inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })")
vim.cmd("inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })")

vim.cmd('nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>')
vim.cmd('nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>')
vim.cmd('nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>')
vim.cmd('nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>')
vim.cmd('nnoremap <silent> ca :Lspsaga code_action<CR>')
vim.cmd('nnoremap <silent> K :Lspsaga hover_doc<CR>')

