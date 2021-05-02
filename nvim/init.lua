require('plugins')
require('settings')
require('keymappings')
require('colorscheme')

require('lv-coc')
vim.cmd('source $HOME/.config/nvim/vimscript/lv-coc.vim')

require('lv-treesitter')
require('lv-colorizer')
require('lv-galaxyline')
