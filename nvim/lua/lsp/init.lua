local nvim_lsp = require('lspconfig')

local language_servers = {'bashls', 'clangd', 'tsserver', 'pyright'}

for _, lsp in ipairs(language_servers) do
	nvim_lsp[lsp].setup{}
end
