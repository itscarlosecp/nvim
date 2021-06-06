let mapleader = ' '

nnoremap <silent> <leader>e :NvimTreeToggle<CR>
nnoremap <silent> <leader>ff :Telescope find_files<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> T <CMD>lua require('FTerm').toggle()<CR>
tnoremap <silent> T <C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>
