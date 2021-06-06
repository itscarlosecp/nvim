local configs = {
	lua = {
		server = "sumneko_lua",
		settings = {
			Lua = {
				diagnostics = {
					globals = {"vim"}
				}
			}
		}
	}
}

local function setup_servers()
	require"lspinstall".setup()
	for lang, _ in pairs(configs) do
		local client = require"lspconfig"[configs[lang].server]
		require"lspconfig"[lang].setup ({
			cmd = configs[lang].cmd or client.cmd,
			filetypes = configs[lang].filetypes or client.filetypes,
			on_attach = configs[lang].on_attach or Utils.custom_on_attach,
			on_init = configs[lang].on_init or Utils.custom_on_init,
			handlers = configs[lang].handlers or client.handlers,
			root_dir = configs[lang].root_dir or client.root_dir,
			capabilities = configs[lang].capabilities or Utils.custom_capabilities(),
			settings = configs[lang].settings or {},
		})
	end
end

setup_servers()

require"lspinstall".post_install_hook = function ()
	setup_servers() -- reload installed servers
	vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

