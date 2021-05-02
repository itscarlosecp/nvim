au BufRead,BufNewFile *.jl set filetype=julia
au BufWrite * :Autoformat

autocmd FileType yaml,yml let b:autoformat_autoindent=0
let g:formatters_python = ["black"]
