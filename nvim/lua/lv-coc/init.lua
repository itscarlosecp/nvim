vim.o.coc_global_extensions = {
      'coc-clangd',
      'coc-emmet',
      'coc-go',
      'coc-highlight',
      'coc-json',
      'coc-lua',
      'coc-pairs',
      'coc-prettier',
      'coc-pyright',
      'coc-tabnine',
      'coc-tailwindcss',
      'coc-tslint',
      'coc-tsserver'
}

vim.cmd("command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')")


