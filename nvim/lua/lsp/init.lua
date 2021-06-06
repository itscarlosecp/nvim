local lspconfig = require"lspconfig"

local custom_capabilities = function()
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	return capabilities
end

local configs = {
	jsonls = {
		cmd = { "vscode-json-language-server", "--stdio" },
		filetypes = { "json", "jsonc" },
		root_dir = vim.loop.cwd,
	},
	html = { cmd = { "vscode-html-language-server", "--stdio" } },
  cssls = { cmd = { "vscode-css-language-server", "--stdio" } },
	pyright = {},
}

for name, opts in pairs(configs) do
	local client = lspconfig[name]
	if opts.extra_setup then
		opts.extra_setup()
	end
	client.setup({
		cmd = opts.cmd or client.cmd,
		filetypes = opts.filetypes or client.filetypes,
		on_attach = opts.on_attach or Util.lsp_on_attach,
		on_init = opts.on_init or Util.lsp_on_init,
		handlers = opts.handlers or client.handlers,
		root_dir = opts.root_dir or client.root_dir,
		capabilities = opts.capabilities or custom_capabilities(),
		settings = opts.settings or {},
	})
end
