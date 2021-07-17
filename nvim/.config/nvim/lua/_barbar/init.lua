local tree ={}

-- GLOBALS
vim.cmd([[
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false
]])

-- NVIMTREE 
tree.open = function ()
   require'bufferline.state'.set_offset(31, 'FileTree')
   require'nvim-tree'.find_file(true)
end

tree.close = function ()
   require'bufferline.state'.set_offset(0)
   require'nvim-tree'.close()
end

return tree 

