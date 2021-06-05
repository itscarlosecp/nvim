local function setup_servers()
	require"lspinstall".setup()
	local servers = require"lspinstall".installed_servers()
	for _, server in pairs(servers) do
		if server == "lua" then
			require"lspconfig".sumneko_lua.setup {
				settings = {
					diagnostics = {
						globals = {"vim"}
					}
				}
			}
		else
			require"lspconfig"[server].setup {}
		end
	end
end

setup_servers()

require"lspinstall".post_install_hook = function ()
	setup_servers()
	vim.cmd("bufdo e")
end

