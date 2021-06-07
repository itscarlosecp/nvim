autocmd FileType yaml,yml let b:autoformat_autoindent=0

autocmd FileType javascript,typescript,javascriptreact,typescriptreact,json let b:autoformat_autoindent=0
autocmd FileType javascript,typescript,javascriptreact,typescriptreact,json let b:autoformat_autoretab=0
autocmd FileType javascript,typescript,javascriptreact,typescriptreact,json let b:autoformat_remove_trailing_spaces=0

au BufRead,BufNewFile *.jl set filetype=julia
au BufWrite * :Autoformat

