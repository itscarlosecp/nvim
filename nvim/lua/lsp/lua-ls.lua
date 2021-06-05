local lspconfig = require"lspconfig"

lspconfig.sumneko_lua.setup = {
	settings = {
		diagnostics = {
			globals = {"vim"}
		}
	}
}
