local languages = {
	"bash", "c", "clojure", "cpp", "css", "dockerfile",
	"fish", "go", "graphql", "haskell", "html", "javascript", "jsdoc",
	"json", "jsonc", "julia", "latex", "lua", "python",
	"regex", "ruby", "rust", "scala", "scss", "svelte",
	"toml", "typescript", "vue", "yaml"
}

require"nvim-treesitter.configs".setup {
	ensure_installed = languages,
	highlight = { enable = true },
	indent = {
		enable = {
			"javascript", "javascriptreact",
			"typescript", "tsx"
		}
	},
}
