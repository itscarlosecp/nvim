let mapleader = ' '

nnoremap <silent> <leader>e :NvimTreeToggle<CR>
nnoremap <silent> <leader>ff :Telescope find_files<CR>

nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-h> <C-w>j
nnoremap <silent> <C-h> <C-w>k
nnoremap <silent> <C-h> <C-w>l

nnoremap <silent> T <CMD>lua require('FTerm').toggle()<CR>
tnoremap <silent> T <C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>
