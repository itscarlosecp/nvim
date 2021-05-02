vim.cmd("au BufRead,BufNewFile *.jl set filetype=julia")
vim.cmd("au BufWrite * :Autoformat")

vim.o.formatters_python = {"black"}
