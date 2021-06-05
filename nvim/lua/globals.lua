O = {
	colorscheme = "oceanic",
	transparency = true,
	colorizer = { color_names = false },
	keymappings = {
		leader = " ",
		explorer = "<Leader>e",
		fuzzy_finder = "<Leader>ff"
	},
	settings = {
		scrolloff = 5
	},
	nvimtree = { 
		ignored_patterns = {".git", "node_modules", ".next"}
	},
	-- Available Treesitter parsers: https://tree-sitter.github.io/tree-sitter/#available-parsers
	treesitter = {
		ensured_installed = "all",
		ignore_installed = {},
		enable_indent = {"javascriptreact"}
	},
	-- Available LSPs Reference: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
	language_servers = {
		"bashls",
		"clangd",
		"clojure_lsp",
		"cmake",
		"cssls",
		"dockerls",
		"gopls",
		"graphql",
		"html",
		"julials",
		"pyright",
		"rust_analyzer",
		"sqlls",
		"svelte",
		"texlab",
		"tsserver",
		"vimls",
		"vuels",
		"yamlls"
	}
}

