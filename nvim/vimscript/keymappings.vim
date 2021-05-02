" Map Leander
let mapleader=" "
" Config Quick Access
nnoremap <leader>c :e ~/.config/nvim/init.vim<CR>
" ESC
imap jj <ESC>
" Fuzzy Finder
nnoremap <leader>p :Telescope find_files<CR>
" Files Explorer
noremap <leader>e :CocCommand explorer<CR>
" Navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Search in all files
nnoremap <leader>sw :CocSearch <C-R>=expand('<cword>')<CR><CR>
