au BufRead,BufNewFile *.jl set filetype=julia
au BufWrite * :Autoformat

let g:formatters_python = ["black"]
