local config = {
				lua = require"lsp.lua-ls"
}

local function setup_servers()
	require"lspinstall".setup()
	local servers = require"lspinstall".installed_servers()
	for _, server in pairs(servers) do
		require"lspconfig"[server].setup (config[server] or {})
	end
end

setup_servers()

require"lspinstall".post_install_hook = function()
	setup_servers()
	vim.cmd("bufdo e")
end

