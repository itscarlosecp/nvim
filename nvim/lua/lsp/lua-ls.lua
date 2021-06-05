local on_attach = require"lsp.on_attach"

require"lspconfig".sumneko_lua.setup {
	on_attach = on_attach,
	settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
}
