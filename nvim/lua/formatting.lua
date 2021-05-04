-- vim.cmd('autocmd FileType yaml,yml let b:autoformat_autoindent=0')
-- vim.cmd('let g:formatters_python = ["black"]')
-- vim.cmd('au BufRead,BufNewFile *.jl set filetype=julia')
vim.cmd('au BufWrite * :Autoformat')

