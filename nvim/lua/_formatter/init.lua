local prettier = function()
	return {
		exe = 'prettier',
		args = {
			'--stdin-filepath', vim.api.nvim_buf_get_name(0),
			'--single-quote',
			'--tab-width', vim.api.nvim_buf_get_option(0, 'tabstop'),
			'--no-semi',
			'--jsx-single-quote',
			'--trailing-comma none',

		},
		stdin = true
	}
end

local luafmt = function()
	return {
		exe = "luafmt",
		args = {"--indent-count", 2, "--stdin"},
		stdin = true
	}
end

require'formatter'.setup {
	logging = false,
	filetype = {
		-- Wev Develop
		javascript = { prettier },
		javascriptreact = { prettier },
		typescript = { prettier },
		typescriptreact = { prettier },

		-- Linux
		lua = { luafmt }
	}
}

vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]], true)

