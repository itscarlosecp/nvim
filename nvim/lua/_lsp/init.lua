vim.lsp.protocol.CompletionItemKind = {
	'   (Text) ',
	'   (Method)',
	'   (Function)',
	'   (Constructor)',
	' ﴲ  (Field)',
	'[] (Variable)',
	'   (Class)',
	' ﰮ  (Interface)',
	'   (Module)',
	' 襁 (Property)',
	'   (Unit)',
	'   (Value)',
	' 練 (Enum)',
	'   (Keyword)',
	'   (Snippet)',
	'   (Color)',
	'   (File)',
	'   (Reference)',
	'   (Folder)',
	'   (EnumMember)',
	' ﲀ  (Constant)',
	' ﳤ  (Struct)',
	'   (Event)',
	'   (Operator)',
	'   (TypeParameter)'
}

local configs = {
	lua = {
		Lua = {
			diagnostics = {
				globals = {'vim'}
			}
		}
	}
}

local function setup_servers()
	require'lspinstall'.setup()
	local servers = require'lspinstall'.installed_servers()
	for _, server in pairs(servers) do
		if configs[server] then
			require'lspconfig'[server].setup {
				settings = configs[server]
			}
		else
			require'lspconfig'[server].setup {}
		end
	end
end

setup_servers()

require'lspinstall'.post_install_hook = function ()
	setup_servers()
	vim.cmd('bufdo e')
end
