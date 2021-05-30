vim.cmd('autocmd FileType yaml,yml let b:autoformat_autoindent=0')
vim.cmd('autocmd FileType typescriptreact let b:autoformat_autoindent=0')
vim.cmd('autocmd FileType typescriptreact let b:autoformat_autoretab=0')
vim.cmd('autocmd FileType typescriptreact let b:autoformat_remove_trailing_spaces=0')

vim.cmd('au BufRead,BufNewFile *.jl set filetype=julia')
vim.cmd('au BufWrite * :Autoformat')

