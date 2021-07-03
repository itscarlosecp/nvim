let mapleader=' '
nnoremap <leader>e :NvimTreeToggle<CR>

nnoremap <silent> <leader>ff :Telescope find_files<CR>
nnoremap <silent> <C-x> <CMD>lua require('FTerm').toggle()<CR>
tnoremap <silent> <C-x> <CMD>lua require('FTerm').toggle()<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap <silent><expr> <C-.> compe#complete()
inoremap <silent><expr> <CR> compe#confirm('<CR>')
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K  <cmd>Lspsaga hover_doc<CR>
nnoremap <silent> ]g <cmd>Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent> [g <cmd>Lspsaga diagnostic_jump_next<CR>
