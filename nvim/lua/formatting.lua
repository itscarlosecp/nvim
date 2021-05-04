-- vim.o.formatters_python = {"black"}

vim.cmd('autocmd FileType yaml,yml let b:autoformat_autoindent=0')
vim.cmd('au BufRead,BufNewFile *.jl set filetype=julia')
vim.cmd('au BufWrite * :Autoformat')

