require'compe'.setup {
	enabled = true;
	autocomplete = true;
	debug = false;
	min_length = 1;
	preselect = 'enable';
	throttle_time = 80;
	source_timeout = 200;
	incomplete_delay = 400;
	max_abbr_width = 100;
	max_kind_width = 100;
	max_menu_width = 100;
	documentation = true;
	source = {
		path = {kind = "   (Path)"},
		buffer = {kind = "   (Buffer)"},
		calc = {kind = "   (Calc)"},
		vsnip = {kind = "   (Snippet)"},
		nvim_lsp = {kind = "   (LSP)"},
		nvim_lua = false,
		spell = {kind = "   (Spell)"},
		tags = false,
		vim_dadbod_completion = true,
		emoji = {kind = " ﲃ  (Emoji)", filetypes={"markdown", "text"}}
	}
}

vim.lsp.protocol.CompletionItemKind = {
	"   (Text) ",
	"   (Method)",
	"   (Function)",
	"   (Constructor)",
	" ﴲ  (Field)",
	"[] (Variable)",
	"   (Class)",
	" ﰮ  (Interface)",
	"   (Module)",
	" 襁 (Property)",
	"   (Unit)",
	"   (Value)",
	" 練 (Enum)",
	"   (Keyword)",
	"   (Snippet)",
	"   (Color)",
	"   (File)",
	"   (Reference)",
	"   (Folder)",
	"   (EnumMember)",
	" ﲀ  (Constant)",
	" ﳤ  (Struct)",
	"   (Event)",
	"   (Operator)",
	"   (TypeParameter)"
}
